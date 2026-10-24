.class Lcom/hzbhd/midwareproxy/colorview/ColorUtil$1;
.super Landroid/database/ContentObserver;
.source "ColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/colorview/ColorUtil;Landroid/os/Handler;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$1;->this$0:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 154
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$1;->this$0:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    invoke-static {p1}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->access$000(Lcom/hzbhd/midwareproxy/colorview/ColorUtil;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "color_view_color_n"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 155
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$1;->this$0:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->access$000(Lcom/hzbhd/midwareproxy/colorview/ColorUtil;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "color_view_color_p"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    iget-object v2, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$1;->this$0:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    invoke-static {v2}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->access$000(Lcom/hzbhd/midwareproxy/colorview/ColorUtil;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "color_text_view_color_n"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 157
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$1;->this$0:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    invoke-static {v3}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->access$000(Lcom/hzbhd/midwareproxy/colorview/ColorUtil;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "color_text_view_color_p"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 158
    iget-object v3, p0, Lcom/hzbhd/midwareproxy/colorview/ColorUtil$1;->this$0:Lcom/hzbhd/midwareproxy/colorview/ColorUtil;

    invoke-virtual {v3, p1, v0, v2, v1}, Lcom/hzbhd/midwareproxy/colorview/ColorUtil;->setCurrColor(IIII)V

    return-void
.end method
