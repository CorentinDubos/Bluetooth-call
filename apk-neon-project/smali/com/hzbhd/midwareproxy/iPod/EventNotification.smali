.class public Lcom/hzbhd/midwareproxy/iPod/EventNotification;
.super Ljava/lang/Object;
.source "EventNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BIT_ASSISTIVE_TOUCH_STATUS:I = 0x14

.field public static final BIT_BLUETOOTH_CONN_STATUS:I = 0x11

.field public static final BIT_CAMERA_STATUS:I = 0x4

.field public static final BIT_CHARGING_INFO:I = 0x5

.field public static final BIT_COMMAND_COMMPLETED:I = 0xd

.field public static final BIT_DATABASE_CHANGED:I = 0x9

.field public static final BIT_FLOW_CONTROL:I = 0x2

.field public static final BIT_NOW_PLAYING_APP_BUNDLE_NAME_STATUS:I = 0xa

.field public static final BIT_NOW_PLAYING_APP_DISPLAY_NAME_STATUS:I = 0x13

.field public static final BIT_RADIO_TAGGING_STATUS:I = 0x3

.field public static final BIT_SESSION_SPACE_AVAILABLE_STATUS:I = 0xb

.field public static final BIT_STATUS_IPOD_OUT_MODE:I = 0xf

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/EventNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_VALID_BIT:I = 0x14


# instance fields
.field private mACKStatus:B

.field private mMask:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/EventNotification$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/EventNotification$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->setACKStatus(B)V

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    return-void
.end method

.method public constructor <init>(B)V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->setACKStatus(B)V

    const-wide/16 v0, 0x0

    .line 81
    iput-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mACKStatus:B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->setACKStatus(B)V

    .line 86
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteArrayToLong([BLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 4

    if-ltz p1, :cond_0

    .line 114
    iget-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    const/4 v2, 0x1

    shl-int p1, v2, p1

    not-int p1, p1

    int-to-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    return-void

    .line 111
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

.method public get(I)Z
    .locals 5

    if-ltz p1, :cond_1

    .line 130
    iget-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    const/4 v2, 0x1

    shl-int p1, v2, p1

    int-to-long v3, p1

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 127
    :cond_1
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

.method public getACKStatus()B
    .locals 1

    .line 99
    iget-byte v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mACKStatus:B

    return v0
.end method

.method public set(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    int-to-long p1, p1

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->set(J)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->clear(I)V

    :goto_0
    return-void
.end method

.method public set(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x14

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 106
    iget-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    const/4 v2, 0x1

    long-to-int p1, p1

    shl-int p1, v2, p1

    int-to-long p1, p1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index < 0 || index > 20: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setACKStatus(B)V
    .locals 0

    .line 95
    iput-byte p1, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mACKStatus:B

    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .line 134
    iget-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    sget-object v2, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, v1, v2}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->longToByteArray(JLcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mMask:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 150
    iget-byte p2, p0, Lcom/hzbhd/midwareproxy/iPod/EventNotification;->mACKStatus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
