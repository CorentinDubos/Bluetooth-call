.class public final enum Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;
.super Ljava/lang/Enum;
.source "MediaControlConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/MediaControlConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EQ_MODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

.field public static final enum Base:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

.field public static final enum Character:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

.field public static final enum HeavyBass:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

.field public static final enum Nature:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

.field public static final enum Power:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

.field public static final enum Voice:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    const-string v1, "Base"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->Base:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    .line 13
    new-instance v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    const-string v1, "Voice"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->Voice:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    .line 14
    new-instance v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    const-string v1, "Power"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->Power:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    .line 15
    new-instance v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    const-string v1, "Nature"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->Nature:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    .line 16
    new-instance v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    const-string v1, "HeavyBass"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->HeavyBass:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    .line 17
    new-instance v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    const-string v1, "Character"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->Character:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    .line 11
    sget-object v8, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->Base:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    aput-object v8, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->Voice:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->Power:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->Nature:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->HeavyBass:Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->$VALUES:[Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;
    .locals 1

    .line 11
    const-class v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;
    .locals 1

    .line 11
    sget-object v0, Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->$VALUES:[Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/MediaControlConstantsDef$EQ_MODE;

    return-object v0
.end method
