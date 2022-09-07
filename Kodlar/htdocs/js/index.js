var imgNum = 1;

const max = document.querySelectorAll('.photo').length;

var a = max; /* resim sayısını tutuyoruz */

function right() 
{
    if(imgNum != max)
    {
        imgNum +=1;
        changeImg(imgNum, -1);
    }
    else 
    {
        imgNum = 1;
        changeImg(imgNum, a-1);
    }
}

function left()
{
    if(imgNum != 1)
    {
        imgNum -= 1;
        changeImg(imgNum, +1);
    }
    else
    {
        imgNum = max;
        changeImg(imgNum, 1-a);
    }
}
function changeImg(value, count)
{
    document.getElementById(`img${value + count}`).style.opacity = '0';
    document.getElementById(`img${value}`).style.opacity = '1';
    document.getElementById(`circle${value + count}`).style.background = 'transparent';
    document.getElementById(`circle${value}`).style.background = 'white';
}





