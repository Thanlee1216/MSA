const draggables = document.querySelectorAll('.draggable')
const contents = document.querySelectorAll('.content')

const baseUrl = 'https://jsonplaceholder.typicode.com/';
const menuNames = [
    'posts',
    'comments',
    'albums',
    'photos',
    'todos',
    'users'
];

$(function() {
    //$('div.menu').hide();

    // open menu
    $('i.fa-bars').click(function() {
        $('div.btn-top').hide();

        $('div.menu').toggle('slide', {
            direction: 'left'
        }, 400);
    });

    // close menu
    $('i.fa-xmark').click(function() {
        $('div.menu').toggle('slide', {
            direction: 'left'
        }, 400, function() {
            $('div.btn-top').fadeIn();
        });
    });

    // click menu
    $(document).on('click', 'li', function() {
        const name = $(this).text();
        $.blockUI();

        $('div.menu').toggle('slide', {
            direction: 'left'
        }, 400, function() {
            $('div.btn-top').fadeIn();
        });
    });

    setMenu();
});

function setMenu() {
    let sMenuHtml = '';
    for (const menu of menuNames) {
        sMenuHtml += `<li>${menu}</li>`;
    }
    $('div.menu ul').html(sMenuHtml);
}

draggables.forEach(draggable => {
    draggable.addEventListener('dragstart', () => {
        draggable.classList.add('dragging')
    })

    draggable.addEventListener('dragend', () => {
        draggable.classList.remove('dragging')
    })
})

contents.forEach(content => {
    content.addEventListener('dragover', e => {
        e.preventDefault()
        const afterElement = getDragAfterElement(content, e.clientY)
        console.log(afterElement);
        const draggable = document.querySelector('.dragging')
        if (afterElement == null) {
            content.appendChild(draggable)
        } else {
            content.insertBefore(draggable, afterElement)
        }
    })
})

function getDragAfterElement(content, y) {
    const draggableElements = [...content.querySelectorAll('.draggable:not(.dragging)')]

    return draggableElements.reduce((closest, child) => {
        const box = child.getBoundingClientRect()
        const offset = y - box.top - box.height / 2
        if (offset < 0 && offset > closest.offset) {
            return { offset: offset, element: child }
        } else {
            return closest
        }
    }, { offset: Number.NEGATIVE_INFINITY }).element
}