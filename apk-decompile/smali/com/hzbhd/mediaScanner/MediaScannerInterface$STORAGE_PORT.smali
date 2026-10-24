.class public Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;
.super Ljava/lang/Object;
.source "MediaScannerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/mediaScanner/MediaScannerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STORAGE_PORT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;
    }
.end annotation


# static fields
.field public static final STORAGE_ALL:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

.field private static allName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static allPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final type:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    const-string v1, "STORAGE_ALL"

    invoke-direct {v0, v1}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->STORAGE_ALL:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "STORAGE_ALL"

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->name:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->OTHER:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->type:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    goto :goto_1

    :cond_0
    const-string v0, "/storage/emulated/0"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "emulated"

    .line 24
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->name:Ljava/lang/String;

    .line 25
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->EMULATED:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->type:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    goto :goto_1

    :cond_1
    const-string v0, "/storage/extsd"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->SD:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->type:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    goto :goto_0

    .line 30
    :cond_2
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->USB:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->type:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    :goto_0
    const/16 v0, 0x9

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->name:Ljava/lang/String;

    .line 34
    :goto_1
    iput-object p1, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->path:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized hasSD(Landroid/content/Context;Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)Z
    .locals 1

    const-class p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object p1, p1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->type:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->SD:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized isSD(Landroid/content/Context;Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)Z
    .locals 1

    const-class p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object p1, p1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->type:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->SD:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized isUSB(Landroid/content/Context;Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)Z
    .locals 1

    const-class p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object p1, p1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->type:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->USB:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static mountPath(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 51
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->allPath:Ljava/util/ArrayList;

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    const-string/jumbo v1, "storage"

    .line 53
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 54
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 57
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_2
    sput-object v1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->allPath:Ljava/util/ArrayList;

    new-array p0, v0, [Ljava/lang/String;

    .line 62
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized scanStoragePath(Landroid/content/Context;Lcom/hzbhd/mediaScanner/MediaScannerInterface$ExternalStoargeStateChanged;)V
    .locals 6

    const-class v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    monitor-enter v0

    .line 89
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->values(Landroid/content/Context;)[Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 90
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_1

    .line 91
    aget-object v4, v1, v3

    invoke-static {p0, v4}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->isUSB(Landroid/content/Context;Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v3, v2

    .line 96
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 97
    aget-object v3, v1, v2

    invoke-static {p0, v3}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->isSD(Landroid/content/Context;Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 102
    :cond_3
    :goto_3
    invoke-interface {p1, v4, v3}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$ExternalStoargeStateChanged;->callback(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized valueOf(Landroid/content/Context;Ljava/lang/String;)Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;
    .locals 3

    const-class v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    monitor-enter v0

    .line 77
    :try_start_0
    invoke-static {p0}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->values(Landroid/content/Context;)[Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    .line 78
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->allName:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->STORAGE_ALL:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    iget-object p0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->name:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 79
    new-instance p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    sget-object v1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->allPath:Ljava/util/ArrayList;

    sget-object v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->allName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 81
    :cond_0
    :try_start_1
    sget-object p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->STORAGE_ALL:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static values(Landroid/content/Context;)[Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;
    .locals 4

    .line 66
    invoke-static {p0}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->mountPath(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    .line 67
    array-length v0, p0

    new-array v0, v0, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->allName:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 69
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 70
    new-instance v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 71
    sget-object v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->allName:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 116
    instance-of v0, p1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->path:Ljava/lang/String;

    check-cast p1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;

    iget-object p1, p1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->path:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isThisType(Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->type:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    invoke-virtual {p1, v0}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->name:Ljava/lang/String;

    return-object v0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->path:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " path:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
