.class public final enum Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;
.super Ljava/lang/Enum;
.source "SettingConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/SettingConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoTestBTOprate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

.field public static final enum music_next:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

.field public static final enum music_pause:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

.field public static final enum music_play:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

.field public static final enum music_prev:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

.field public static final enum phone_answer:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

.field public static final enum phone_hangup:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 280
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    const-string v1, "music_prev"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_prev:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    .line 281
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    const-string v1, "music_next"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_next:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    .line 282
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    const-string v1, "music_play"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_play:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    .line 283
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    const-string v1, "music_pause"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_pause:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    .line 284
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    const-string v1, "phone_answer"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->phone_answer:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    .line 285
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    const-string v1, "phone_hangup"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->phone_hangup:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    .line 279
    sget-object v8, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_prev:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    aput-object v8, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_next:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_play:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->music_pause:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->phone_answer:Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->$VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;
    .locals 1

    .line 279
    const-class v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;
    .locals 1

    .line 279
    sget-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->$VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/SettingConstantsDef$AutoTestBTOprate;

    return-object v0
.end method
