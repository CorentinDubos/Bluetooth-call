.class public final enum Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;
.super Ljava/lang/Enum;
.source "AuxVideoConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/AuxVideoConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIDEO_FORMAT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

.field public static final enum NTSC:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

.field public static final enum PAL:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

.field public static final enum SECAM:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 23
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    const-string v1, "NTSC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;->NTSC:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    .line 24
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    const-string v1, "PAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;->PAL:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    .line 25
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    const-string v1, "SECAM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;->SECAM:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    .line 22
    sget-object v5, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;->NTSC:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;->PAL:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;->$VALUES:[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;
    .locals 1

    .line 22
    const-class v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;
    .locals 1

    .line 22
    sget-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;->$VALUES:[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_FORMAT;

    return-object v0
.end method
