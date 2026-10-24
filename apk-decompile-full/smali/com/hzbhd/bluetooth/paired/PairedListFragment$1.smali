.class Lcom/hzbhd/bluetooth/paired/PairedListFragment$1;
.super Ljava/lang/Object;
.source "PairedListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/paired/PairedListFragment;->initNP2(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/paired/PairedListFragment;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$1;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairedListFragment$1;->this$0:Lcom/hzbhd/bluetooth/paired/PairedListFragment;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/paired/PairedListFragment;->search()V

    return-void
.end method
