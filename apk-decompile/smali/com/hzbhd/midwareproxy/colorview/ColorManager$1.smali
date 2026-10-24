.class Lcom/hzbhd/midwareproxy/colorview/ColorManager$1;
.super Landroid/database/ContentObserver;
.source "ColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/colorview/ColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/colorview/ColorManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/colorview/ColorManager;Landroid/os/Handler;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager$1;->this$0:Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 98
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager$1;->this$0:Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->access$000(Lcom/hzbhd/midwareproxy/colorview/ColorManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.misc.colorpickerpoint.color"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sswang"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 101
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->convertToARGB(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorManager$1;->this$0:Lcom/hzbhd/midwareproxy/colorview/ColorManager;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/colorview/ColorManager;->access$100(Lcom/hzbhd/midwareproxy/colorview/ColorManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;

    .line 104
    invoke-interface {v1, p1}, Lcom/hzbhd/midwareproxy/colorview/ColorManager$ColorChangeCallback;->ColorChange(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
