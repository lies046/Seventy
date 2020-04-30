$(function () {
  $("#btnAdd2").on("click", function () {
    console.log("ok")
    // 最終行ではなく、非表示になっている最初の行なので first-child になっている
    $("#tblForm tbody tr:first-child").clone(true).appendTo("#tblForm tbody");

    // 複製後に表示させる
    $("#tblForm tbody tr:last-child").css("display", "table-row");

    // 行削除
    $(".btnDelete").on("click", function () {
      $(this).parent().parent().remove();
    });
  });
});