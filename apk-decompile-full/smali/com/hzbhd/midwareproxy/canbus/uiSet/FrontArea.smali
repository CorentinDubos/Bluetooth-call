.class public Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;
.super Ljava/lang/Object;
.source "FrontArea.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private disableBtnArray:[Ljava/lang/String;

.field private isAllBtnCanClick:Z

.field private isCanSetCenterTemp:Z

.field private isCanSetLeftTemp:Z

.field private isCanSetRightTemp:Z

.field private isCanSetSeatCold:Z

.field private isCanSetSeatHeat:Z

.field private isCanSetWindSpeed:Z

.field private isHaveLeftRightWindSpeed:Z

.field private isShowCenterWheel:Z

.field private isShowLeftWheel:Z

.field private isShowPmValue:Z

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

.field private setRightWindSpeedViewOnClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;

.field private setWindSpeedViewOnClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;

.field private smallWindowStatusArray:[Ljava/lang/String;

.field private tempSetViewOnUpDownClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;

.field private tempTouchListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTempTouchListener;

.field private windMaxLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->lineBtnAction:[[Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isAllBtnCanClick:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowLeftWheel:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowCenterWheel:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowRightWheel:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetLeftTemp:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetCenterTemp:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetRightTemp:Z

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->windMaxLevel:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetWindSpeed:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isHaveLeftRightWindSpeed:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowSeatHeat:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v0, v3

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetSeatHeat:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v3

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowSeatCold:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_c

    :cond_c
    move v0, v2

    :goto_c
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetSeatCold:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_d

    move v2, v3

    :cond_d
    iput-boolean v2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowPmValue:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatHeatSrnArray:[Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatColdSrnArray:[Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->disableBtnArray:[Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->smallWindowStatusArray:[Ljava/lang/String;

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

    .line 92
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->disableBtnArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getDisableBtnS()[Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->disableBtnArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getIsHaveLeftRightWindSpeed()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isHaveLeftRightWindSpeed:Z

    return v0
.end method

.method public getLineBtnAction()[[Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->lineBtnAction:[[Ljava/lang/String;

    return-object v0
.end method

.method public getOnAirBtnClickListeners()[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirBtnClickListener;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->onAirBtnClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirBtnClickListener;

    return-object v0
.end method

.method public getOnAirPageStatusListener()Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->onAirPageStatusListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;

    return-object v0
.end method

.method public getOnAirSeatClickListener()Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatClickListener;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->onAirSeatClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatClickListener;

    return-object v0
.end method

.method public getSeatColdSrnArray()[Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatColdSrnArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getSeatHeatColdClickListeners()[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatHeatColdMinPlusClickListener;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatHeatColdClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatHeatColdMinPlusClickListener;

    return-object v0
.end method

.method public getSeatHeatSrnArray()[Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatHeatSrnArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getSetRightWindSpeedViewOnClickListener()Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->setRightWindSpeedViewOnClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;

    return-object v0
.end method

.method public getSetWindSpeedViewOnClickListener()Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->setWindSpeedViewOnClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;

    return-object v0
.end method

.method public getSmallWindowStatusArray()[Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->smallWindowStatusArray:[Ljava/lang/String;

    return-object v0
.end method

.method public getTempSetViewOnUpDownClickListeners()[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->tempSetViewOnUpDownClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;

    return-object v0
.end method

.method public getTempTouchListeners()[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTempTouchListener;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->tempTouchListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTempTouchListener;

    return-object v0
.end method

.method public getWindMaxLevel()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->windMaxLevel:I

    return v0
.end method

.method public isAllBtnCanClick()Z
    .locals 1

    .line 261
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isAllBtnCanClick:Z

    return v0
.end method

.method public isCanSetCenterTemp()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetCenterTemp:Z

    return v0
.end method

.method public isCanSetLeftTemp()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetLeftTemp:Z

    return v0
.end method

.method public isCanSetRightTemp()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetRightTemp:Z

    return v0
.end method

.method public isCanSetSeatCold()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetSeatCold:Z

    return v0
.end method

.method public isCanSetSeatHeat()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetSeatHeat:Z

    return v0
.end method

.method public isCanSetWindSpeed()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetWindSpeed:Z

    return v0
.end method

.method public isShowCenterWheel()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowCenterWheel:Z

    return v0
.end method

.method public isShowLeftWheel()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowLeftWheel:Z

    return v0
.end method

.method public isShowPmValue()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowPmValue:Z

    return v0
.end method

.method public isShowRightWheel()Z
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowRightWheel:Z

    return v0
.end method

.method public isShowSeatCold()Z
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowSeatCold:Z

    return v0
.end method

.method public isShowSeatHeat()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowSeatHeat:Z

    return v0
.end method

.method public setAllBtnCanClick(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isAllBtnCanClick:Z

    return-void
.end method

.method public setCanSetCenterTemp(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetCenterTemp:Z

    return-void
.end method

.method public setCanSetLeftTemp(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetLeftTemp:Z

    return-void
.end method

.method public setCanSetRightTemp(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetRightTemp:Z

    return-void
.end method

.method public setCanSetSeatCold(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetSeatCold:Z

    return-void
.end method

.method public setCanSetSeatHeat(Z)V
    .locals 0

    .line 189
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetSeatHeat:Z

    return-void
.end method

.method public setCanSetWindSpeed(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetWindSpeed:Z

    return-void
.end method

.method public setDisableBtnArray([Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->disableBtnArray:[Ljava/lang/String;

    return-void
.end method

.method public setDisableBtnS([Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->disableBtnArray:[Ljava/lang/String;

    return-void
.end method

.method public setHaveLeftRightWindSpeed(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isHaveLeftRightWindSpeed:Z

    return-void
.end method

.method public setLineBtnAction([[Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->lineBtnAction:[[Ljava/lang/String;

    return-void
.end method

.method public setOnAirBtnClickListeners([Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirBtnClickListener;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->onAirBtnClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirBtnClickListener;

    return-void
.end method

.method public setOnAirPageStatusListener(Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->onAirPageStatusListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;

    return-void
.end method

.method public setOnAirSeatClickListener(Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatClickListener;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->onAirSeatClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatClickListener;

    return-void
.end method

.method public setSeatColdSrnArray([Ljava/lang/String;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatColdSrnArray:[Ljava/lang/String;

    return-void
.end method

.method public setSeatHeatColdClickListeners([Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatHeatColdMinPlusClickListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatHeatColdClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirSeatHeatColdMinPlusClickListener;

    return-void
.end method

.method public setSeatHeatSrnArray([Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatHeatSrnArray:[Ljava/lang/String;

    return-void
.end method

.method public setSetRightWindSpeedViewOnClickListener(Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->setRightWindSpeedViewOnClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;

    return-void
.end method

.method public setSetWindSpeedViewOnClickListener(Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->setWindSpeedViewOnClickListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirWindSpeedUpDownClickListener;

    return-void
.end method

.method public setShowCenterWheel(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowCenterWheel:Z

    return-void
.end method

.method public setShowLeftWheel(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowLeftWheel:Z

    return-void
.end method

.method public setShowPmValue(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowPmValue:Z

    return-void
.end method

.method public setShowRightWheel(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowRightWheel:Z

    return-void
.end method

.method public setShowSeatCold(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowSeatCold:Z

    return-void
.end method

.method public setShowSeatHeat(Z)V
    .locals 0

    .line 273
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowSeatHeat:Z

    return-void
.end method

.method public setSmallWindowStatusArray([Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->smallWindowStatusArray:[Ljava/lang/String;

    return-void
.end method

.method public setTempSetViewOnUpDownClickListeners([Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->tempSetViewOnUpDownClickListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTemperatureUpDownClickListener;

    return-void
.end method

.method public setTempTouchListeners([Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTempTouchListener;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->tempTouchListeners:[Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirTempTouchListener;

    return-void
.end method

.method public setWindMaxLevel(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->windMaxLevel:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 323
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->lineBtnAction:[[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 324
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->lineBtnAction:[[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 325
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->lineBtnAction:[[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 326
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->lineBtnAction:[[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 327
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isAllBtnCanClick:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 328
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowLeftWheel:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 329
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowCenterWheel:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 330
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowRightWheel:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 331
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetLeftTemp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 332
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetCenterTemp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 333
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetRightTemp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 334
    iget p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->windMaxLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetWindSpeed:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 336
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isHaveLeftRightWindSpeed:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 337
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowSeatHeat:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 338
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetSeatHeat:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 339
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowSeatCold:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 340
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isCanSetSeatCold:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 341
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->isShowPmValue:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 342
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatHeatSrnArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 343
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->seatColdSrnArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 344
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->disableBtnArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 345
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->smallWindowStatusArray:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
