$(document).ready(function () {
    generateMoveBlocks();
});

let draggedElement = null;

function generateMoveBlocks() {
    const content = $('#content');

    for (let i = 1; i <= 3; i++) {
        const column = $('<div class="column"></div>');

        for (let j = 1; j <= 4; j++) {
            const moveBlock = $('<div class="move-block"></div>')
                .text(`Block ${i}-${j}`)
                .attr('draggable', true)
                .on('dragstart', dragStart);

            column.append(moveBlock);
        }

        content.append(column);
    }
}

function dragStart(event) {
    draggedElement = $(event.target);
    event.originalEvent.dataTransfer.effectAllowed = 'move';
    event.originalEvent.dataTransfer.setData('text/plain', draggedElement.text());
}

$(document).on('dragover', function (event) {
    event.preventDefault();

    if (draggedElement) {
        const rect = draggedElement[0].getBoundingClientRect();
        draggedElement.css({
            position: 'fixed',
            top: `${event.originalEvent.clientY - rect.height / 2}px`,
            left: `${event.originalEvent.clientX - rect.width / 2}px`
        });

        const columns = $('.column');
        const closestBlock = getClosestBlock(event.originalEvent.clientX, event.originalEvent.clientY, columns);

        if (closestBlock) {
            const rectClosest = closestBlock[0].getBoundingClientRect();
            const isDraggedAbove = event.originalEvent.clientY < rectClosest.top + rectClosest.height / 2;

            if (isDraggedAbove) {
                closestBlock.prepend(draggedElement);
            } else {
                closestBlock.append(draggedElement);
            }
        }
    }
});

$(document).on('dragend', function () {
    if (draggedElement) {
        draggedElement.css('position', 'static');
        draggedElement = null;
    }
});

$(document).on('drop', function (event) {
    event.preventDefault();
    if (draggedElement) {
        draggedElement.css('position', 'static');
        const target = $(event.target);

        if (target.hasClass('move-block')) {
            const draggedText = event.originalEvent.dataTransfer.getData('text/plain');
            target.text(draggedText);
            draggedElement.text('');
        } else if (target.hasClass('column')) {
            const newBlock = draggedElement.clone();
            newBlock.attr('draggable', true).on('dragstart', dragStart);
            target.append(newBlock);
        }

        draggedElement = null;
    }
});

function getClosestBlock(x, y, blocks) {
    const distances = blocks.map(function (block) {
        const rect = block.getBoundingClientRect();
        const dx = x - (rect.left + rect.width / 2);
        const dy = y - (rect.top + rect.height / 2);
        return Math.hypot(dx, dy);
    });

    const closestIndex = distances.indexOf(Math.min(...distances));
    return blocks.eq(closestIndex);
}
