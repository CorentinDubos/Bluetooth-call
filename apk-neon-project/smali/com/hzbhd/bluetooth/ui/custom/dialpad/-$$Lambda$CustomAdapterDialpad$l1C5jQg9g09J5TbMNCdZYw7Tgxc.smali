.class public final synthetic Lcom/hzbhd/bluetooth/ui/custom/dialpad/-$$Lambda$CustomAdapterDialpad$l1C5jQg9g09J5TbMNCdZYw7Tgxc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/-$$Lambda$CustomAdapterDialpad$l1C5jQg9g09J5TbMNCdZYw7Tgxc;->f$0:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;

    iput p2, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/-$$Lambda$CustomAdapterDialpad$l1C5jQg9g09J5TbMNCdZYw7Tgxc;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/-$$Lambda$CustomAdapterDialpad$l1C5jQg9g09J5TbMNCdZYw7Tgxc;->f$0:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;

    iget v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/-$$Lambda$CustomAdapterDialpad$l1C5jQg9g09J5TbMNCdZYw7Tgxc;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->lambda$onBindViewHolder$0$CustomAdapterDialpad(ILandroid/view/View;)V

    return-void
.end method
