//document.addEventListener('contextmenu', event => event.preventDefault());
function verifSuppression(id) {
    var verif=confirm("Voulez-vous supprimer cette formation ?");
    //console.log(verif);
    if (verif) {
        window.location.href="/formation/supprimer/"+id;
    }
}