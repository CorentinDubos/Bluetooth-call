.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;
.super Ljava/lang/Object;
.source "HfpMainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->initUI_H1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)V
    .locals 0

    .line 1412
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1415
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1416
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1417
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    const/16 v0, 0x1f40

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->SendMsg(I)V

    .line 1418
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    sget-boolean p1, Lcom/hzbhd/bluetooth/call/CallFragment;->CALL_VOICE_FLGS:Z

    xor-int/lit8 p1, p1, 0x1

    sput-boolean p1, Lcom/hzbhd/bluetooth/call/CallFragment;->CALL_VOICE_FLGS:Z

    .line 1419
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const v0, 0x7f090146

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$5;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$400(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/call/CallFragment;

    sget-boolean v0, Lcom/hzbhd/bluetooth/call/CallFragment;->CALL_VOICE_FLGS:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    return-void
.end method
