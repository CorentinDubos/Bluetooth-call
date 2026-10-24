.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$1;
.super Ljava/lang/Object;
.source "HfpMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->onLongClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;I)V
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$1;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

    iput p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1498
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$1;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->val$mainView:Lcom/hzbhd/bluetooth/ui/_a6/MainView;

    iget p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$1;->val$position:I

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->clearData(I)V

    return-void
.end method
