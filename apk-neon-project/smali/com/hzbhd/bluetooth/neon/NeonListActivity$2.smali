.class Lcom/hzbhd/bluetooth/neon/NeonListActivity$2;
.super Landroid/widget/ArrayAdapter;
.source "NeonListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/neon/NeonListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/neon/NeonListActivity;

.field final synthetic val$pad:I


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/neon/NeonListActivity;Landroid/content/Context;ILjava/util/List;I)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/hzbhd/bluetooth/neon/NeonListActivity$2;->this$0:Lcom/hzbhd/bluetooth/neon/NeonListActivity;

    iput p5, p0, Lcom/hzbhd/bluetooth/neon/NeonListActivity$2;->val$pad:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 75
    const p2, -0x473733

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    const/high16 p2, 0x41a00000    # 20.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 77
    iget p2, p0, Lcom/hzbhd/bluetooth/neon/NeonListActivity$2;->val$pad:I

    iget p3, p0, Lcom/hzbhd/bluetooth/neon/NeonListActivity$2;->val$pad:I

    div-int/lit8 p3, p3, 0x2

    iget v0, p0, Lcom/hzbhd/bluetooth/neon/NeonListActivity$2;->val$pad:I

    iget v1, p0, Lcom/hzbhd/bluetooth/neon/NeonListActivity$2;->val$pad:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 78
    return-object p1
.end method
