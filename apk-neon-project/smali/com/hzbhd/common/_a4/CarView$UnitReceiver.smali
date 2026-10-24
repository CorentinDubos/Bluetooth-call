.class public Lcom/hzbhd/common/_a4/CarView$UnitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/_a4/CarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnitReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/_a4/CarView;


# direct methods
.method public constructor <init>(Lcom/hzbhd/common/_a4/CarView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string p1, "TYPE"

    const/4 v0, 0x1

    .line 108
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "\n"

    const-string/jumbo v1, "\u5355\u4f4d\u8bbe\u7f6e"

    if-nez p1, :cond_0

    const-string/jumbo p1, "\u5207\u6362\u81f3\u82f1\u5236\u5355\u4f4d"

    .line 109
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    const/4 v0, 0x0

    iput v0, p1, Lcom/hzbhd/common/_a4/CarView;->UnitTag:I

    .line 112
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-object v0, v0, Lcom/hzbhd/common/_a4/CarView;->decimalFormat:Ljava/text/DecimalFormat;

    iget-object v2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget v2, v2, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    int-to-double v2, v2

    const-wide v4, 0x3fe3e245dad5a40cL    # 0.6213712

    mul-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nMPH"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$000(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u901f\u5ea61\u8bbe\u7f6e\u4e86\u82f1\u5236\u5355\u4f4d__\u5e7f\u64ad\u8bbe\u7f6e"

    .line 114
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/hzbhd/common/ui/R$string;->current_speed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-object p2, p2, Lcom/hzbhd/common/_a4/CarView;->decimalFormat:Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget v0, v0, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    int-to-double v2, v0

    mul-double/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MPH"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 117
    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p2}, Lcom/hzbhd/common/_a4/CarView;->access$200(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u901f\u5ea62\u8bbe\u7f6e\u4e86\u82f1\u5236\u5355\u4f4d__\u5e7f\u64ad\u8bbe\u7f6e"

    .line 118
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-object p2, p2, Lcom/hzbhd/common/_a4/CarView;->decimalFormat:Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-wide v2, v0, Lcom/hzbhd/common/_a4/CarView;->nowAltitude:D

    const-wide v4, 0x400a3f28fca3d717L    # 3.28083989501

    mul-double/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "FOOT"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p2}, Lcom/hzbhd/common/_a4/CarView;->access$300(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u6d77\u62d4\u8bbe\u7f6e\u4e86\u82f1\u5236\u5355\u4f4d__\u5e7f\u64ad\u8bbe\u7f6e"

    .line 122
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const-string/jumbo p1, "\u5207\u6362\u81f3\u516c\u5236\u5355\u4f4d"

    .line 125
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iput v0, p1, Lcom/hzbhd/common/_a4/CarView;->UnitTag:I

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget v0, v0, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nkm/h"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$000(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u901f\u5ea61\u8bbe\u7f6e\u4e86\u516c\u5236\u5355\u4f4d__\u5e7f\u64ad\u8bbe\u7f6e"

    .line 130
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {v0}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/hzbhd/common/ui/R$string;->current_speed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget p2, p2, Lcom/hzbhd/common/_a4/CarView;->nowSpeed:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "km/h"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p2}, Lcom/hzbhd/common/_a4/CarView;->access$200(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u901f\u5ea62\u8bbe\u7f6e\u4e86\u516c\u5236\u5355\u4f4d__\u5e7f\u64ad\u8bbe\u7f6e"

    .line 134
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-object p2, p2, Lcom/hzbhd/common/_a4/CarView;->decimalFormat:Ljava/text/DecimalFormat;

    iget-object v0, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    iget-wide v2, v0, Lcom/hzbhd/common/_a4/CarView;->nowAltitude:D

    invoke-virtual {p2, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p2}, Lcom/hzbhd/common/_a4/CarView;->access$100(Lcom/hzbhd/common/_a4/CarView;)Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/hzbhd/common/ui/R$string;->unit_meter:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/hzbhd/common/_a4/CarView$UnitReceiver;->this$0:Lcom/hzbhd/common/_a4/CarView;

    invoke-static {p2}, Lcom/hzbhd/common/_a4/CarView;->access$300(Lcom/hzbhd/common/_a4/CarView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo p1, "\u6d77\u62d4\u8bbe\u7f6e\u4e86\u516c\u5236\u5355\u4f4d__\u5e7f\u64ad\u8bbe\u7f6e"

    .line 138
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
