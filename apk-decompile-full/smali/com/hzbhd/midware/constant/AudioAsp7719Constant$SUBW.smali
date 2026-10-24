.class public final enum Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;
.super Ljava/lang/Enum;
.source "AudioAsp7719Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/AudioAsp7719Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SUBW"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

.field public static final enum BEEP_SW:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

.field public static final enum LOUDNESS:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

.field public static final enum MIC_MUTE:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

.field public static final enum PARKING_SW:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

.field public static final enum PHASE:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

.field public static final enum SUBWOOFER:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

.field public static final enum SUB_FILTER:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 247
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    const-string v1, "LOUDNESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->LOUDNESS:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    .line 248
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    const-string v1, "SUB_FILTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->SUB_FILTER:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    .line 249
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    const-string v1, "SUBWOOFER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->SUBWOOFER:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    .line 250
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    const-string v1, "MIC_MUTE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->MIC_MUTE:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    .line 251
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    const-string v1, "BEEP_SW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->BEEP_SW:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    .line 252
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    const-string v1, "PARKING_SW"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->PARKING_SW:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    .line 253
    new-instance v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    const-string v1, "PHASE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->PHASE:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    .line 246
    sget-object v9, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->LOUDNESS:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    aput-object v9, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->SUB_FILTER:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->SUBWOOFER:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->MIC_MUTE:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->BEEP_SW:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->PARKING_SW:Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->$VALUES:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;
    .locals 1

    .line 246
    const-class v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;
    .locals 1

    .line 246
    sget-object v0, Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->$VALUES:[Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/AudioAsp7719Constant$SUBW;

    return-object v0
.end method
