.class public final synthetic Lcom/hzbhd/bluetooth/settings/-$$Lambda$SettingsFragment$ov4RPBqdVrFpk2jtZcdCGTpve54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/Button;

.field public final synthetic f$1:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/settings/-$$Lambda$SettingsFragment$ov4RPBqdVrFpk2jtZcdCGTpve54;->f$0:Landroid/widget/Button;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/settings/-$$Lambda$SettingsFragment$ov4RPBqdVrFpk2jtZcdCGTpve54;->f$1:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/hzbhd/bluetooth/settings/-$$Lambda$SettingsFragment$ov4RPBqdVrFpk2jtZcdCGTpve54;->f$0:Landroid/widget/Button;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/settings/-$$Lambda$SettingsFragment$ov4RPBqdVrFpk2jtZcdCGTpve54;->f$1:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/hzbhd/bluetooth/settings/SettingsFragment;->lambda$initPA6$0(Landroid/widget/Button;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method
