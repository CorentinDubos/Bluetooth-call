.class public final enum Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;
.super Ljava/lang/Enum;
.source "AndroidConfigAtribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

.field public static final enum BOOLEAN:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

.field public static final enum INTEGER:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

.field public static final enum STRING:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->INTEGER:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    new-instance v0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    const-string v1, "BOOLEAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->BOOLEAN:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    new-instance v0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    const-string v1, "STRING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->STRING:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    .line 4
    sget-object v5, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->INTEGER:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->BOOLEAN:Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;
    .locals 1

    .line 4
    const-class v0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;
    .locals 1

    .line 4
    sget-object v0, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->$VALUES:[Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute$TYPE;

    return-object v0
.end method
