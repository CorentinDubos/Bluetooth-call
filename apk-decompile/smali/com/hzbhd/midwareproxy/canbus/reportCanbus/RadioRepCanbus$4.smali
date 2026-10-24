.class Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;
.super Ljava/lang/Object;
.source "RadioRepCanbus.java"

# interfaces
.implements Lcom/hzbhd/midwareproxy/canbus/reportCanbus/MyCanbusInferface$CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;->reportCanbusInfo(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

.field final synthetic val$currBand:Ljava/lang/String;

.field final synthetic val$currClickPresetIndex:I

.field final synthetic val$currentFreq:Ljava/lang/String;

.field final synthetic val$isStereo:I

.field final synthetic val$psName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->this$0:Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus;

    iput p2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$currClickPresetIndex:I

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$currBand:Ljava/lang/String;

    iput-object p4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$currentFreq:Ljava/lang/String;

    iput-object p5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$psName:Ljava/lang/String;

    iput p6, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$isStereo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 330
    iget v1, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$currClickPresetIndex:I

    iget-object v2, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$currBand:Ljava/lang/String;

    iget-object v3, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$currentFreq:Ljava/lang/String;

    iget-object v4, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$psName:Ljava/lang/String;

    iget v5, p0, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/RadioRepCanbus$4;->val$isStereo:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/hzbhd/midwareproxy/binder/service/ICanbusInterface;->radioInfoChange(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
