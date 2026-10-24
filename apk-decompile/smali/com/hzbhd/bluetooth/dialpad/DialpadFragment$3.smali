.class Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$3;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/calllog/CallLogQueryHandler$CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;->initPA6(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

.field final synthetic val$mAdapter:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$3;->this$0:Lcom/hzbhd/bluetooth/dialpad/DialpadFragment;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$3;->val$mAdapter:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$3;->val$mAdapter:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 596
    iget-object p1, p0, Lcom/hzbhd/bluetooth/dialpad/DialpadFragment$3;->val$mAdapter:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->notifyDataSetChanged()V

    return-void
.end method
