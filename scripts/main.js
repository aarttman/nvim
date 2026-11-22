// javascript comment

/*
 * Multiline javascript comment;
 * multilineeee
 * multilineeeeeeee
 */


const image = document.querySelector("img");

image.addEventListener("click", () => {
    const mySrc = image.getAttribute("src");

    if (mySrc === "images/cocacola.png") {
        image.setAttribute("mySrc", "../images/pepsi.png");
    } else {
        image.setAttribute("mySrc", "../images/pepsi.png");
    }
});
