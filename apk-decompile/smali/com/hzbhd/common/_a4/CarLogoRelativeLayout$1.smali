.class Lcom/hzbhd/common/_a4/CarLogoRelativeLayout$1;
.super Landroid/database/ContentObserver;
.source "CarLogoRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;Landroid/os/Handler;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout$1;->this$0:Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 198
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout$1;->this$0:Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;

    invoke-static {p1}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->access$000(Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout$1;->this$0:Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->access$100(Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;)I

    move-result v0

    const-string v1, "com.carview.a4.car.icon"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 199
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout$1;->this$0:Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->access$100(Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout$1;->this$0:Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;

    invoke-static {v0, p1}, Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;->access$200(Lcom/hzbhd/common/_a4/CarLogoRelativeLayout;I)V

    :cond_0
    return-void
.end method
