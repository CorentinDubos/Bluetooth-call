.class public final enum Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;
.super Ljava/lang/Enum;
.source "AuxVideoConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/AuxVideoConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIDEO_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

.field public static final enum AUDIO_ONLY_ON:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

.field public static final enum OFF:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

.field public static final enum VIDEO_ON:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;->OFF:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    .line 18
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    const-string v1, "AUDIO_ONLY_ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;->AUDIO_ONLY_ON:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    .line 19
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    const-string v1, "VIDEO_ON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;->VIDEO_ON:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    .line 16
    sget-object v5, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;->OFF:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;->AUDIO_ONLY_ON:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;->$VALUES:[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;
    .locals 1

    .line 16
    const-class v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;
    .locals 1

    .line 16
    sget-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;->$VALUES:[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_STATE;

    return-object v0
.end method
