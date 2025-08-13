// Matrix-style number rain effect
function createMatrixNumbers() {
    const container = document.getElementById('hero-numbers');
    if (!container) return;
    
    const numbers = '0123456789.-';
    const columns = Math.floor(window.innerWidth / 25);
    
    // Clear existing numbers
    container.innerHTML = '';
    
    for (let i = 0; i < columns; i++) {
        setTimeout(() => {
            createColumn(i * 25, container, numbers);
        }, Math.random() * 2000);
    }
}

function createColumn(x, container, numbers) {
    const column = document.createElement('div');
    column.style.position = 'absolute';
    column.style.left = x + 'px';
    column.style.top = '0';
    column.style.height = '100%';
    
    // Create multiple number streams for this column
    for (let j = 0; j < 3; j++) {
        setTimeout(() => {
            createNumberStream(column, numbers);
        }, Math.random() * 3000);
    }
    
    container.appendChild(column);
}

function createNumberStream(column, numbers) {
    const stream = document.createElement('span');
    const text = Array.from({length: Math.floor(Math.random() * 10) + 15}, () => 
        numbers[Math.floor(Math.random() * numbers.length)]
    ).join('\\n');
    
    stream.textContent = text;
    stream.style.whiteSpace = 'pre';
    stream.style.animationDelay = Math.random() * 2 + 's';
    stream.style.animationDuration = (Math.random() * 4 + 6) + 's';
    
    column.appendChild(stream);
    
    // Remove and recreate after animation
    setTimeout(() => {
        if (column.contains(stream)) {
            column.removeChild(stream);
        }
        // Recreate stream
        setTimeout(() => createNumberStream(column, numbers), Math.random() * 2000);
    }, 8000);
}

// Initialize on load
window.addEventListener('load', createMatrixNumbers);
window.addEventListener('resize', createMatrixNumbers);

// Mobile menu functionality
document.addEventListener('DOMContentLoaded', function() {
    const mobileMenuToggle = document.getElementById('mobile-menu-toggle');
    const navLinks = document.getElementById('nav-links');
    
    if (mobileMenuToggle && navLinks) {
        mobileMenuToggle.addEventListener('click', function() {
            this.classList.toggle('active');
            navLinks.classList.toggle('active');
            
            // Update aria-label
            if (this.classList.contains('active')) {
                this.setAttribute('aria-label', 'メニューを閉じる');
            } else {
                this.setAttribute('aria-label', 'メニューを開く');
            }
        });
        
        // Close menu when clicking on links
        navLinks.addEventListener('click', function(e) {
            if (e.target.tagName === 'A') {
                mobileMenuToggle.classList.remove('active');
                navLinks.classList.remove('active');
                mobileMenuToggle.setAttribute('aria-label', 'メニューを開く');
            }
        });
        
        // Close menu when clicking outside
        document.addEventListener('click', function(e) {
            if (!mobileMenuToggle.contains(e.target) && !navLinks.contains(e.target)) {
                mobileMenuToggle.classList.remove('active');
                navLinks.classList.remove('active');
                mobileMenuToggle.setAttribute('aria-label', 'メニューを開く');
            }
        });
    }
});