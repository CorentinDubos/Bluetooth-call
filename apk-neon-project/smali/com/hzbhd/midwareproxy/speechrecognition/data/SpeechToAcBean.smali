.class public Lcom/hzbhd/midwareproxy/speechrecognition/data/SpeechToAcBean;
.super Ljava/lang/Object;
.source "SpeechToAcBean.java"


# instance fields
.field private front_left_temperature:Lcom/hzbhd/midwareproxy/speechrecognition/data/FrontLeftTemperatureBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFront_left_temperature()Lcom/hzbhd/midwareproxy/speechrecognition/data/FrontLeftTemperatureBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/speechrecognition/data/SpeechToAcBean;->front_left_temperature:Lcom/hzbhd/midwareproxy/speechrecognition/data/FrontLeftTemperatureBean;

    return-object v0
.end method

.method public setFront_left_temperature(Lcom/hzbhd/midwareproxy/speechrecognition/data/FrontLeftTemperatureBean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/speechrecognition/data/SpeechToAcBean;->front_left_temperature:Lcom/hzbhd/midwareproxy/speechrecognition/data/FrontLeftTemperatureBean;

    return-void
.end method
