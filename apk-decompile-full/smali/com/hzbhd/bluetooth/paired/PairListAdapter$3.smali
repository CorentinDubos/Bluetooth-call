.class Lcom/hzbhd/bluetooth/paired/PairListAdapter$3;
.super Ljava/lang/Object;
.source "PairListAdapter.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/paired/PairListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/paired/PairListAdapter;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$3;->this$0:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 83
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$3;->this$0:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->access$000(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$3;->this$0:Lcom/hzbhd/bluetooth/paired/PairListAdapter;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->access$000(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;->onKey(ILandroid/view/KeyEvent;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
