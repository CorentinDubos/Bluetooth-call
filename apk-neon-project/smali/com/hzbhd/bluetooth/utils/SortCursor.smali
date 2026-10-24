.class public Lcom/hzbhd/bluetooth/utils/SortCursor;
.super Landroid/database/CursorWrapper;
.source "SortCursor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/CursorWrapper;",
        "Ljava/util/Comparator<",
        "Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;",
        ">;"
    }
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mPos:I

.field sortList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 25
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->sortList:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mPos:I

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/String;)V
    .locals 7

    .line 45
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->sortList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mPos:I

    .line 46
    iput-object p1, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 49
    iget-object v2, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_1

    .line 50
    new-instance v2, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;

    invoke-direct {v2}, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;-><init>()V

    .line 51
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mww_searchKey"

    invoke-static {v5, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 54
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->key:I

    goto :goto_1

    .line 56
    :cond_0
    iput v0, v2, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->key:I

    .line 57
    :goto_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--sortKey.key=="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->key:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    iput v1, v2, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->order:I

    .line 59
    iget-object v3, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v2, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;)I
    .locals 2

    .line 35
    iget v0, p1, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->key:I

    iget v1, p2, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->key:I

    if-eq v0, v1, :cond_1

    .line 36
    iget v0, p1, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->key:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 38
    :cond_0
    iget v0, p2, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->key:I

    if-ne v0, v1, :cond_1

    return v1

    .line 41
    :cond_1
    iget p1, p1, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->key:I

    iget p2, p2, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->key:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;

    check-cast p2, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;

    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/bluetooth/utils/SortCursor;->compare(Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;)I

    move-result p1

    return p1
.end method

.method public getPosition()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mPos:I

    return v0
.end method

.method public move(I)Z
    .locals 1

    .line 92
    iget v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/utils/SortCursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/utils/SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/utils/SortCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/utils/SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .line 86
    iget v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/utils/SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 67
    iput p1, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mPos:I

    .line 68
    iget-object v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;

    iget p1, p1, Lcom/hzbhd/bluetooth/utils/SortCursor$SortEntry;->order:I

    .line 69
    iget-object v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mPos:I

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->sortList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mPos:I

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToPrevious()Z
    .locals 1

    .line 89
    iget v0, p0, Lcom/hzbhd/bluetooth/utils/SortCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/hzbhd/bluetooth/utils/SortCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
