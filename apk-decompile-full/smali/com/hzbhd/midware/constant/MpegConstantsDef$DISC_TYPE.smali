.class public final enum Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;
.super Ljava/lang/Enum;
.source "MpegConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/MpegConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DISC_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

.field public static final enum CD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

.field public static final enum DVD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

.field public static final enum NODISC:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

.field public static final enum ROM:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

.field public static final enum UNKONW:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

.field public static final enum USB:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

.field public static final enum VCD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 374
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    const-string v1, "UNKONW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->UNKONW:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    const-string v1, "DVD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->DVD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    const-string v1, "VCD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->VCD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    const-string v1, "CD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->CD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    const-string v1, "ROM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->ROM:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    const-string v1, "USB"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->USB:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    const-string v1, "NODISC"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->NODISC:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    .line 373
    sget-object v9, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->UNKONW:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    aput-object v9, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->DVD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->VCD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->CD:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->ROM:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->USB:Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 373
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;
    .locals 1

    .line 373
    const-class v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;
    .locals 1

    .line 373
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/MpegConstantsDef$DISC_TYPE;

    return-object v0
.end method
