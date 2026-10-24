.class public final enum Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;
.super Ljava/lang/Enum;
.source "MpegConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/MpegConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "K_SELECT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

.field public static final enum CHAPTER_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

.field public static final enum RADIO_FREQ_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

.field public static final enum TIME_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

.field public static final enum TITLE_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

.field public static final enum TRACK_NUM_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 366
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    const-string v1, "RADIO_FREQ_SELECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->RADIO_FREQ_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    .line 367
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    const-string v1, "TRACK_NUM_SELECT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->TRACK_NUM_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    .line 368
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    const-string v1, "TITLE_SELECT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->TITLE_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    .line 369
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    const-string v1, "CHAPTER_SELECT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->CHAPTER_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    .line 370
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    const-string v1, "TIME_SELECT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->TIME_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    .line 365
    sget-object v7, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->RADIO_FREQ_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    aput-object v7, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->TRACK_NUM_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->TITLE_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->CHAPTER_SELECT:Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 365
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;
    .locals 1

    .line 365
    const-class v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;
    .locals 1

    .line 365
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/MpegConstantsDef$K_SELECT;

    return-object v0
.end method
