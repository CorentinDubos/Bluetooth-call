.class Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$1;
.super Ljava/lang/Object;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->access$000(Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;)Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$1;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;->access$000(Lcom/hzbhd/bluetooth/calllog/CallLogAdapter;)Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/hzbhd/bluetooth/calllog/CallLogAdapter$CallLogAdapterListener;->doDialAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
