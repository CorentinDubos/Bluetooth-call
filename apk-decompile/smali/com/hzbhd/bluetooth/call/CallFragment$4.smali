.class Lcom/hzbhd/bluetooth/call/CallFragment$4;
.super Ljava/lang/Object;
.source "CallFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/call/CallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/CallFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/CallFragment;)V
    .locals 0

    .line 977
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 980
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900c7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1018
    :pswitch_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "*"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1015
    :pswitch_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "#"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    :pswitch_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "9"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :pswitch_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "8"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1006
    :pswitch_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "7"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1003
    :pswitch_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "6"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :pswitch_6
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "5"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 997
    :pswitch_7
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "4"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 994
    :pswitch_8
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "3"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :pswitch_9
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "2"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    :pswitch_a
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 985
    :pswitch_b
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    const-string v0, "0"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1500(Lcom/hzbhd/bluetooth/call/CallFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 982
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$4;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$1400(Lcom/hzbhd/bluetooth/call/CallFragment;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900b5
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
