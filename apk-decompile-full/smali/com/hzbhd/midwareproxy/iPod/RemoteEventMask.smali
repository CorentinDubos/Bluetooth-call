.class public Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;
.super Ljava/lang/Object;
.source "RemoteEventMask.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BIT_ALARM_SETTING:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BIT_AUDIOBOOK_SPEED:I = 0xe

.field public static final BIT_BACKLIGHT_LEVEL:I = 0xb

.field public static final BIT_CHAPTER_IDX:I = 0x2

.field public static final BIT_DATE_AND_TIME_SETTING:I = 0x9

.field public static final BIT_EQUALIZER_SETTING:I = 0x6

.field public static final BIT_HOLD_SWITCH_STATE:I = 0xc

.field public static final BIT_MUTE_OR_UI_OR_ABS_VOL:I = 0x10

.field public static final BIT_MUTE_OR_VOLUME:I = 0x4

.field public static final BIT_PLAYBACK_ENGINE_CONTENTS:I = 0x12

.field public static final BIT_PLAY_STATUS:I = 0x3

.field public static final BIT_POWER_BATTERY:I = 0x5

.field public static final BIT_REPEAT_SETTING:I = 0x8

.field public static final BIT_SHUFFLE_SETTING:I = 0x7

.field public static final BIT_SOUND_CHECK_STATE:I = 0xd

.field public static final BIT_TRACK_CAPABLE:I = 0x11

.field public static final BIT_TRACK_PLAYBACK_IDX:I = 0x1

.field public static final BIT_TRACK_TIME_POS_MS:I = 0x0

.field public static final BIT_TRACK_TIME_POS_SEC:I = 0xf

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_VALID_BIT:I = 0x13


# instance fields
.field private mMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->mMask:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->mMask:I

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 79
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->mMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->mMask:I

    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public set(I)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x13

    if-ge p1, v0, :cond_0

    .line 71
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->mMask:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->mMask:I

    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index < 0 || index > 19:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 84
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->set(I)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->clear(I)V

    :goto_0
    return-void
.end method

.method public toByteArray()[B
    .locals 2

    .line 91
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->mMask:I

    sget-object v1, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->intToByteArray(ILcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 101
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/RemoteEventMask;->mMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
