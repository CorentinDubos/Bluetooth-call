.class public final enum Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;
.super Ljava/lang/Enum;
.source "MpegConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/MpegConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DISC_SCAN_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

.field public static final enum SCAN_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

.field public static final enum SCAN_ON:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 411
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    const-string v1, "SCAN_OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;->SCAN_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    const-string v1, "SCAN_ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;->SCAN_ON:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    .line 410
    sget-object v4, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;->SCAN_OFF:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 410
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;
    .locals 1

    .line 410
    const-class v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;
    .locals 1

    .line 410
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_SCAN_STATUS;

    return-object v0
.end method
