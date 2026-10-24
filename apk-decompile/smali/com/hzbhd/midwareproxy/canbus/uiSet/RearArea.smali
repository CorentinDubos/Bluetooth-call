.class public Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;
.super Ljava/lang/Object;
.source "RearArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private disableBtnArray:[Ljava/lang/String;

.field private isAllBtnCanClick:Z

.field private isCanSetSeatCold:Z

.field private isCanSetSeatHeat:Z

.field private isCanSetTemp:Z

.field private isCanSetWindSpeed:Z

.field private isShowCenterWheel:Z

.field private isShowLeftWheel:Z

.field private isShowRightWheel:Z

.field private isShowSeatCold:Z

.field private isShowSeatHeat:Z

.field private lineBtnAction:[[Ljava/lang/String;

.field private onAirBtnClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirBtnClickListener;

.field private onAirPageStatusListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;

.field private onAirSeatClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatClickListener;

.field private seatColdSrnArray:[Ljava/lang/String;

.field private seatHeatColdClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatHeatColdMinPlusClickListener;

.field private seatHeatSrnArray:[Ljava/lang/String;

.field private setWindSpeedViewOnClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;

.field private tempSetViewOnUpDownClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;

.field private windMaxLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isAllBtnCanClick:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowLeftWheel:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowCenterWheel:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowRightWheel:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetTemp:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->windMaxLevel:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetWindSpeed:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowSeatHeat:Z

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetSeatHeat:Z

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowSeatCold:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetSeatCold:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatHeatSrnArray:[Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatColdSrnArray:[Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->disableBtnArray:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisableBtnArray()[Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->disableBtnArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getDisableBtnS()[Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->disableBtnArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getLineBtnAction()[[Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->lineBtnAction:[[Ljava/lang/String;

    return-object v0
.end method

.method public getOnAirBtnClickListeners()[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirBtnClickListener;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->onAirBtnClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirBtnClickListener;

    return-object v0
.end method

.method public getOnAirPageStatusListener()Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->onAirPageStatusListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;

    return-object v0
.end method

.method public getOnAirSeatClickListener()Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatClickListener;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->onAirSeatClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatClickListener;

    return-object v0
.end method

.method public getSeatColdSrnArray()[Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatColdSrnArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getSeatHeatColdClickListeners()[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatHeatColdMinPlusClickListener;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatHeatColdClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatHeatColdMinPlusClickListener;

    return-object v0
.end method

.method public getSeatHeatSrnArray()[Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatHeatSrnArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getSetWindSpeedViewOnClickListener()Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->setWindSpeedViewOnClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;

    return-object v0
.end method

.method public getTempSetViewOnUpDownClickListeners()[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->tempSetViewOnUpDownClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;

    return-object v0
.end method

.method public getWindMaxLevel()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->windMaxLevel:I

    return v0
.end method

.method public isAllBtnCanClick()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isAllBtnCanClick:Z

    return v0
.end method

.method public isCanSetSeatCold()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetSeatCold:Z

    return v0
.end method

.method public isCanSetSeatHeat()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetSeatHeat:Z

    return v0
.end method

.method public isCanSetTemp()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetTemp:Z

    return v0
.end method

.method public isCanSetWindSpeed()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetWindSpeed:Z

    return v0
.end method

.method public isShowCenterWheel()Z
    .locals 1

    .line 188
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowCenterWheel:Z

    return v0
.end method

.method public isShowLeftWheel()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowLeftWheel:Z

    return v0
.end method

.method public isShowRightWheel()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowRightWheel:Z

    return v0
.end method

.method public isShowSeatCold()Z
    .locals 1

    .line 212
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowSeatCold:Z

    return v0
.end method

.method public isShowSeatHeat()Z
    .locals 1

    .line 204
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowSeatHeat:Z

    return v0
.end method

.method public setAllBtnCanClick(Z)V
    .locals 0

    .line 200
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isAllBtnCanClick:Z

    return-void
.end method

.method public setCanSetSeatCold(Z)V
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetSeatCold:Z

    return-void
.end method

.method public setCanSetSeatHeat(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetSeatHeat:Z

    return-void
.end method

.method public setCanSetTemp(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetTemp:Z

    return-void
.end method

.method public setCanSetWindSpeed(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetWindSpeed:Z

    return-void
.end method

.method public setDisableBtnArray([Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->disableBtnArray:[Ljava/lang/String;

    return-void
.end method

.method public setDisableBtnS([Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->disableBtnArray:[Ljava/lang/String;

    return-void
.end method

.method public setLineBtnAction([[Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->lineBtnAction:[[Ljava/lang/String;

    return-void
.end method

.method public setOnAirBtnClickListeners([Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirBtnClickListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->onAirBtnClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirBtnClickListener;

    return-void
.end method

.method public setOnAirPageStatusListener(Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->onAirPageStatusListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;

    return-void
.end method

.method public setOnAirSeatClickListener(Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatClickListener;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->onAirSeatClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatClickListener;

    return-void
.end method

.method public setSeatColdSrnArray([Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatColdSrnArray:[Ljava/lang/String;

    return-void
.end method

.method public setSeatHeatColdClickListeners([Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatHeatColdMinPlusClickListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatHeatColdClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatHeatColdMinPlusClickListener;

    return-void
.end method

.method public setSeatHeatSrnArray([Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatHeatSrnArray:[Ljava/lang/String;

    return-void
.end method

.method public setSetWindSpeedViewOnClickListener(Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->setWindSpeedViewOnClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;

    return-void
.end method

.method public setShowCenterWheel(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowCenterWheel:Z

    return-void
.end method

.method public setShowLeftWheel(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowLeftWheel:Z

    return-void
.end method

.method public setShowRightWheel(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowRightWheel:Z

    return-void
.end method

.method public setShowSeatCold(Z)V
    .locals 0

    .line 216
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowSeatCold:Z

    return-void
.end method

.method public setShowSeatHeat(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowSeatHeat:Z

    return-void
.end method

.method public setTempSetViewOnUpDownClickListeners([Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->tempSetViewOnUpDownClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;

    return-void
.end method

.method public setWindMaxLevel(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->windMaxLevel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 250
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isAllBtnCanClick:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 251
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowLeftWheel:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 252
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowCenterWheel:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 253
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowRightWheel:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 254
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetTemp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 255
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->windMaxLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetWindSpeed:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 257
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowSeatHeat:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 258
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetSeatHeat:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isShowSeatCold:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 260
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->isCanSetSeatCold:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 261
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatHeatSrnArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 262
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->seatColdSrnArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 263
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->disableBtnArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
