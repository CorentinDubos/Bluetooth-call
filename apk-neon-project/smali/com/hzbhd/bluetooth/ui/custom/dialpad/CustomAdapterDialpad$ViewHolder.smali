.class public Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CustomAdapterDialpad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;


# direct methods
.method public constructor <init>(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;Landroid/view/View;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->this$0:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;

    .line 94
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090183

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->imageView:Landroid/widget/ImageView;

    const p1, 0x7f0901f8

    .line 96
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method
