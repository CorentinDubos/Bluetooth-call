.class Lcom/hzbhd/bluetooth/calllog/CallLogFragment$ListOnItemLongClickListener;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListOnItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/calllog/CallLogFragment;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcom/hzbhd/bluetooth/calllog/CallLogFragment$ListOnItemLongClickListener;->this$0:Lcom/hzbhd/bluetooth/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
