.class Lcom/hzbhd/common/_a4/CarView$2;
.super Landroid/os/Handler;
.source "CarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/_a4/CarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/_a4/CarView;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/_a4/CarView;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 298
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 299
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "############0.00"

    const-string/jumbo v2, "\u5355\u4f4d\u8bbe\u7f6e"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 362
    :pswitch_0
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 363
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Altitude"

    .line 364
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 365
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iput-wide v3, p1, Lcom/hzbhd/common/_a4/CarView;->nowAltitude:D

    .line 366
    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$300(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 368
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget v0, v0, Lcom/hzbhd/common/_a4/CarView;->UnitTag:I

    if-nez v0, :cond_1

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-wide v3, v1, Lcom/hzbhd/common/_a4/CarView;->nowAltitude:D

    const-wide v5, 0x400a3f28fca3d717L    # 3.28083989501

    mul-double/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FOOT"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 370
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$300(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u8bbe\u7f6e\u4e86\u82f1\u5236\u5355\u4f4d_\u6d77\u62d4"

    .line 371
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 373
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-wide v3, v1, Lcom/hzbhd/common/_a4/CarView;->nowAltitude:D

    invoke-virtual {p1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p1}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/hzbhd/common/ui/R$string;->unit_meter:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$300(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u8bbe\u7f6e\u4e86\u516c\u5236\u5355\u4f4d_\u6d77\u62d4"

    .line 375
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 357
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "count"

    .line 358
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 359
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$600(Lcom/hzbhd/common/_a4/CarView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxSatelliteCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 340
    :pswitch_2
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 341
    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "Longitude"

    .line 342
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v0, "Latitude"

    .line 343
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 344
    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$1100(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ":"

    if-eqz v0, :cond_3

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v6}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/hzbhd/common/ui/R$string;->longitude:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v2, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v2}, Lcom/hzbhd/common/_a4/CarView;->access$1100(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :cond_3
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$1200(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v2}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/hzbhd/common/ui/R$string;->latitude:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 352
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$1200(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 333
    :pswitch_3
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    .line 334
    :cond_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "bear"

    .line 335
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 336
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$1000(Lcom/hzbhd/common/_a4/CarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 337
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$1000(Lcom/hzbhd/common/_a4/CarView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/hzbhd/common/_a4/CarView;->access$900(Lcom/hzbhd/common/_a4/CarView;ILandroid/view/View;)V

    goto/16 :goto_1

    .line 301
    :pswitch_4
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    .line 302
    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "speed"

    .line 303
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 304
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iput p1, v0, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    .line 305
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$800(Lcom/hzbhd/common/_a4/CarView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 306
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$800(Lcom/hzbhd/common/_a4/CarView;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/hzbhd/common/_a4/CarView;->access$900(Lcom/hzbhd/common/_a4/CarView;ILandroid/view/View;)V

    .line 307
    :cond_6
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p1}, Lcom/hzbhd/common/_a4/CarView;->access$000(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object p1

    const-wide v0, 0x3fe3e245dad5a40cL    # 0.6213712

    if-eqz p1, :cond_8

    .line 308
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget p1, p1, Lcom/hzbhd/common/_a4/CarView;->UnitTag:I

    if-nez p1, :cond_7

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-object v3, v3, Lcom/hzbhd/common/_a4/CarView;->decimalFormat:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget v4, v4, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nMPH"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 310
    iget-object v3, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v3}, Lcom/hzbhd/common/_a4/CarView;->access$000(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u8bbe\u7f6e\u4e86\u82f1\u5236\u5355\u4f4d_\u901f\u5ea61"

    .line 311
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget v3, v3, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nkm/h"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 314
    iget-object v3, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v3}, Lcom/hzbhd/common/_a4/CarView;->access$000(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u8bbe\u7f6e\u4e86\u516c\u5236\u5355\u4f4d_\u901f\u5ea61"

    .line 315
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p1}, Lcom/hzbhd/common/_a4/CarView;->access$200(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 320
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget p1, p1, Lcom/hzbhd/common/_a4/CarView;->UnitTag:I

    const-string v3, "\n"

    if-nez p1, :cond_9

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v4}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/hzbhd/common/ui/R$string;->current_speed:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-object v3, v3, Lcom/hzbhd/common/_a4/CarView;->decimalFormat:Ljava/text/DecimalFormat;

    iget-object v4, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget v4, v4, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    int-to-double v4, v4

    mul-double/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MPH"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$200(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u8bbe\u7f6e\u4e86\u82f1\u5236\u5355\u4f4d_\u901f\u5ea62"

    .line 323
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 325
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/hzbhd/common/ui/R$string;->current_speed:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget v0, v0, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "km/h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 326
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$2;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$200(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u8bbe\u7f6e\u4e86\u516c\u5236\u5355\u4f4d_\u901f\u5ea62"

    .line 327
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
