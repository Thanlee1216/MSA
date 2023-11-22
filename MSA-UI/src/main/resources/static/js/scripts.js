document.addEventListener('DOMContentLoaded', function () {
    generateMoveBlocks();
});

function generateMoveBlocks() {
    const content = document.querySelector('.content');
    for (let i = 1; i <= 12; i++) {
        const moveBlock = document.createElement('div');
        moveBlock.className = 'move-block';
        moveBlock.innerText = 'Block ' + i;
        moveBlock.draggable = true;
        moveBlock.addEventListener('dragstart', dragStart);
        content.appendChild(moveBlock);
    }
}

function dragStart(event) {
    event.dataTransfer.effectAllowed = 'move';
    event.dataTransfer.setData('text/plain', event.target.innerText);
    setTimeout(() => {
        event.target.style.visibility = 'hidden';
    }, 0);
}

function toggleNavigation() {
    const menu = document.getElementById('menu');
    menu.style.display = menu.style.display === 'none' ? 'flex' : 'none';
}

function hideNavigation() {
    const menu = document.getElementById('menu');
    menu.style.display = 'none';
}
