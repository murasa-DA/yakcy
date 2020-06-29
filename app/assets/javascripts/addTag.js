class TextareaController{
    constructor(target){
        this.area = document.getElementById(target);
    }

    setButtonH1(btn){
        const button = document.getElementById(btn);
        button.addEventListener("click", ()=>{
            this.area.value += "<h1></h1>";
        });
    }

    setButtonH2(btn){
        const button = document.getElementById(btn);
        button.addEventListener("click", ()=>{
            this.area.value += "<h2></h2>";
        });
    }

    setButtonH3(btn){
        const button = document.getElementById(btn);
        button.addEventListener("click", ()=>{
            this.area.value += "<h3></h3>";
        });
    }

    setButtonB(btn){
        const button = document.getElementById(btn);
        button.addEventListener("click", ()=>{
            this.area.value += "<b></b>";
        });
    }
}
const taCon = new TextareaController("articleData");
taCon.setButtonH1("h1button");
taCon.setButtonH2("h2button");
taCon.setButtonH3("h3button");
taCon.setButtonB("broadbutton");
