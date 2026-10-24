.class public Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;
.super Ljava/lang/Object;
.source "AirPageUiSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private frontArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;

.field private isHaveRearArea:Z

.field private onAirInitListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirInitListener;

.field private onAirPageStatusListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;

.field private rearArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->isHaveRearArea:Z

    .line 24
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;

    iput-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->frontArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;

    .line 25
    sget-object v1, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;

    iput-object v1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->rearArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->isHaveRearArea:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFrontArea()Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->frontArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;

    return-object v0
.end method

.method public getOnAirInitListener()Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirInitListener;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->onAirInitListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirInitListener;

    return-object v0
.end method

.method public getOnAirPageStatusListener()Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->onAirPageStatusListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;

    return-object v0
.end method

.method public getRearArea()Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->rearArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;

    return-object v0
.end method

.method public isHaveRearArea()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->isHaveRearArea:Z

    return v0
.end method

.method public setFrontArea(Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->frontArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;

    return-void
.end method

.method public setHaveRearArea(Z)V
    .locals 0

    .line 78
    iput-boolean p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->isHaveRearArea:Z

    return-void
.end method

.method public setOnAirInitListener(Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirInitListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->onAirInitListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirInitListener;

    return-void
.end method

.method public setOnAirPageStatusListener(Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->onAirPageStatusListener:Lcom/hzbhd/midwareproxy/canbus/interfaces/OnAirPageStatusListener;

    return-void
.end method

.method public setRearArea(Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->rearArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 88
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->frontArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/FrontArea;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 89
    iget-object p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->rearArea:Lcom/hzbhd/midwareproxy/canbus/uiSet/RearArea;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 90
    iget-boolean p2, p0, Lcom/hzbhd/midwareproxy/canbus/uiSet/AirPageUiSet;->isHaveRearArea:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
