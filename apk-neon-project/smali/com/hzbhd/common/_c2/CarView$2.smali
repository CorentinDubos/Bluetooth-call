.class Lcom/hzbhd/common/_c2/CarView$2;
.super Landroid/os/Handler;
.source "CarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/_c2/CarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/_c2/CarView;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/_c2/CarView;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 222
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$400(Lcom/hzbhd/common/_c2/CarView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 260
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Altitude"

    .line 261
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 262
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v2, "############0.0"

    invoke-direct {p1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v2}, Lcom/hzbhd/common/_c2/CarView;->access$1200(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {p1}, Lcom/hzbhd/common/_c2/CarView;->access$400(Lcom/hzbhd/common/_c2/CarView;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/hzbhd/common/ui/R$string;->unit_meter:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$1200(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 254
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "count"

    .line 255
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 256
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$200(Lcom/hzbhd/common/_c2/CarView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxSatelliteCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 243
    :pswitch_2
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$400(Lcom/hzbhd/common/_c2/CarView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 244
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Longitude"

    .line 245
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-string v2, "Latitude"

    .line 246
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 247
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v4, "############0.00"

    invoke-direct {p1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v4}, Lcom/hzbhd/common/_c2/CarView;->access$1000(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, ":"

    if-eqz v4, :cond_2

    .line 249
    iget-object v4, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v4}, Lcom/hzbhd/common/_c2/CarView;->access$1000(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v7}, Lcom/hzbhd/common/_c2/CarView;->access$400(Lcom/hzbhd/common/_c2/CarView;)Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/hzbhd/common/ui/R$string;->longitude:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$1100(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 251
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$1100(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v4}, Lcom/hzbhd/common/_c2/CarView;->access$400(Lcom/hzbhd/common/_c2/CarView;)Landroid/content/Context;

    move-result-object v4

    sget v6, Lcom/hzbhd/common/ui/R$string;->latitude:I

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 236
    :pswitch_3
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$400(Lcom/hzbhd/common/_c2/CarView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 237
    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bear"

    .line 238
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 239
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$900(Lcom/hzbhd/common/_c2/CarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$900(Lcom/hzbhd/common/_c2/CarView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/hzbhd/common/_c2/CarView;->access$600(Lcom/hzbhd/common/_c2/CarView;ILandroid/view/View;)V

    goto/16 :goto_0

    .line 225
    :pswitch_4
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$400(Lcom/hzbhd/common/_c2/CarView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 226
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "speed"

    .line 227
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 228
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$500(Lcom/hzbhd/common/_c2/CarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 229
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$500(Lcom/hzbhd/common/_c2/CarView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/hzbhd/common/_c2/CarView;->access$600(Lcom/hzbhd/common/_c2/CarView;ILandroid/view/View;)V

    .line 230
    :cond_5
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$700(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 231
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$700(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nkm/h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_6
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$800(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_c2/CarView;->access$800(Lcom/hzbhd/common/_c2/CarView;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hzbhd/common/_c2/CarView$2;->this$0:Lcom/hzbhd/common/_c2/CarView;

    invoke-static {v2}, Lcom/hzbhd/common/_c2/CarView;->access$400(Lcom/hzbhd/common/_c2/CarView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/hzbhd/common/ui/R$string;->current_speed:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "km/h"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
