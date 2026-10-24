.class public Lcom/hzbhd/bluetooth/a2dp/GpsInfoActivity;
.super Landroid/app/Activity;
.source "GpsInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/GpsInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "neon_gps_info"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/a2dp/GpsInfoActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/a2dp/GpsInfoActivity;->setContentView(I)V

    return-void
.end method
