.class public Lcom/hzbhd/bluetooth/ui/_a6/MainView;
.super Landroid/widget/RelativeLayout;
.source "MainView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;
    }
.end annotation


# static fields
.field public static final CLEAR_CONTACT:Ljava/lang/String; = "_a6_clear_contact"

.field public static final SAVE_COLLECT:Ljava/lang/String; = "_a6_save_blueTooth_collect"

.field public static final SAVE_COLLECT_1:Ljava/lang/String; = "_a6_blueTooth_collect_1"

.field public static final SAVE_COLLECT_2:Ljava/lang/String; = "_a6_blueTooth_collect_2"

.field public static final SAVE_COLLECT_3:Ljava/lang/String; = "_a6_blueTooth_collect_3"

.field public static final SAVE_COLLECT_4:Ljava/lang/String; = "_a6_blueTooth_collect_4"

.field public static final SAVE_COLLECT_5:Ljava/lang/String; = "_a6_blueTooth_collect_5"


# instance fields
.field private final SAVE_COLLECT_SPLIT:Ljava/lang/String;

.field private blueName:Landroid/widget/TextView;

.field private collectText1:Landroid/widget/TextView;

.field private collectText2:Landroid/widget/TextView;

.field private collectText3:Landroid/widget/TextView;

.field private collectText4:Landroid/widget/TextView;

.field private collectText5:Landroid/widget/TextView;

.field private collection1:Landroid/widget/RelativeLayout;

.field private collection2:Landroid/widget/RelativeLayout;

.field private collection3:Landroid/widget/RelativeLayout;

.field private collection4:Landroid/widget/RelativeLayout;

.field private collection5:Landroid/widget/RelativeLayout;

.field private collectionName1:Landroid/widget/TextView;

.field private collectionName2:Landroid/widget/TextView;

.field private collectionName3:Landroid/widget/TextView;

.field private collectionName4:Landroid/widget/TextView;

.field private collectionName5:Landroid/widget/TextView;

.field private collectionPhone1:Landroid/widget/TextView;

.field private collectionPhone2:Landroid/widget/TextView;

.field private collectionPhone3:Landroid/widget/TextView;

.field private collectionPhone4:Landroid/widget/TextView;

.field private collectionPhone5:Landroid/widget/TextView;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private mContext:Landroid/content/Context;

.field private mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, ","

    .line 24
    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->SAVE_COLLECT_SPLIT:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b0177

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->initView()V

    return-void
.end method

.method private getData()V
    .locals 1

    const/4 v0, 0x0

    .line 307
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->getData(I)V

    const/4 v0, 0x1

    .line 308
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->getData(I)V

    const/4 v0, 0x2

    .line 309
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->getData(I)V

    const/4 v0, 0x3

    .line 310
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->getData(I)V

    const/4 v0, 0x4

    .line 311
    invoke-direct {p0, v0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->getData(I)V

    return-void
.end method

.method private getData(I)V
    .locals 9

    .line 244
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, ","

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v5, :cond_6

    const/4 v6, 0x2

    if-eq p1, v6, :cond_4

    const/4 v6, 0x3

    if-eq p1, v6, :cond_2

    const/4 v6, 0x4

    if-eq p1, v6, :cond_0

    goto/16 :goto_0

    .line 291
    :cond_0
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_a6_blueTooth_collect_5"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 293
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 294
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText5:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName5:Landroid/widget/TextView;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone5:Landroid/widget/TextView;

    aget-object p1, p1, v5

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->clearData(I)V

    goto/16 :goto_0

    .line 280
    :cond_2
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_a6_blueTooth_collect_4"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 282
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText4:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName4:Landroid/widget/TextView;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone4:Landroid/widget/TextView;

    aget-object p1, p1, v5

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 287
    :cond_3
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->clearData(I)V

    goto/16 :goto_0

    .line 269
    :cond_4
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_a6_blueTooth_collect_3"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 271
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 272
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName3:Landroid/widget/TextView;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone3:Landroid/widget/TextView;

    aget-object p1, p1, v5

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 276
    :cond_5
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->clearData(I)V

    goto :goto_0

    .line 258
    :cond_6
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_a6_blueTooth_collect_2"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 260
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 261
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName2:Landroid/widget/TextView;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone2:Landroid/widget/TextView;

    aget-object p1, p1, v5

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    :cond_7
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->clearData(I)V

    goto :goto_0

    .line 247
    :cond_8
    iget-object v6, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_a6_blueTooth_collect_1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 250
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName1:Landroid/widget/TextView;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone1:Landroid/widget/TextView;

    aget-object p1, p1, v5

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 254
    :cond_9
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->clearData(I)V

    .line 302
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 303
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private initView()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mContext:Landroid/content/Context;

    const-string v1, "_a6_save_blueTooth_collect"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection1:Landroid/widget/RelativeLayout;

    .line 57
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection2:Landroid/widget/RelativeLayout;

    .line 58
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection3:Landroid/widget/RelativeLayout;

    .line 59
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection4:Landroid/widget/RelativeLayout;

    .line 60
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection5:Landroid/widget/RelativeLayout;

    .line 61
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f090044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->blueName:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText1:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText2:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText3:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText4:Landroid/widget/TextView;

    .line 66
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText5:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone1:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone2:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone3:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone4:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone5:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName1:Landroid/widget/TextView;

    .line 73
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName2:Landroid/widget/TextView;

    .line 74
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName3:Landroid/widget/TextView;

    .line 75
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName4:Landroid/widget/TextView;

    .line 76
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mView:Landroid/view/View;

    const v1, 0x7f0900ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName5:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection5:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection4:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collection5:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 90
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->refreshUi()V

    return-void
.end method

.method private refreshUi()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->getData()V

    return-void
.end method

.method private saveData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 221
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_a6_blueTooth_collect_5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 233
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_a6_blueTooth_collect_4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_0

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_a6_blueTooth_collect_3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_a6_blueTooth_collect_2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 224
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_a6_blueTooth_collect_1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public clearData(I)V
    .locals 5

    .line 183
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothRemoteDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    goto/16 :goto_0

    .line 210
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_a6_blueTooth_collect_5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText5:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName5:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone5:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_a6_blueTooth_collect_4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText4:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 206
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName4:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone4:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_a6_blueTooth_collect_3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText3:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName3:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone3:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_a6_blueTooth_collect_2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText2:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone2:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_a6_blueTooth_collect_1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText1:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :goto_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getCollectPhone(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 325
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone5:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone4:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 321
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone3:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 319
    :cond_3
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone2:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 317
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone1:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-interface {v0, p1, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onClick(Landroid/view/View;I)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-interface {v0, p1, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onClick(Landroid/view/View;I)V

    goto :goto_0

    .line 113
    :pswitch_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-interface {v0, p1, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onClick(Landroid/view/View;I)V

    goto :goto_0

    .line 110
    :pswitch_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onClick(Landroid/view/View;I)V

    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onClick(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900f6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    .line 145
    invoke-interface {v0, p1, v2}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onLongClick(Landroid/view/View;I)V

    goto :goto_0

    .line 140
    :pswitch_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    .line 141
    invoke-interface {v0, p1, v2}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onLongClick(Landroid/view/View;I)V

    goto :goto_0

    .line 136
    :pswitch_2
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 137
    invoke-interface {v0, p1, v2}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onLongClick(Landroid/view/View;I)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1, v1}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onLongClick(Landroid/view/View;I)V

    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 129
    invoke-interface {v0, p1, v2}, Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;->onLongClick(Landroid/view/View;I)V

    :cond_0
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900f6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBlueName(Ljava/lang/String;)V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->blueName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCollectionName(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText5:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName5:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone5:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText4:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName4:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone4:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText3:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName3:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone3:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText2:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName2:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone2:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    :cond_4
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectText1:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionName1:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->collectionPhone1:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->saveData(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOnCollectionClickListener(Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->mOnCollectionClickListener:Lcom/hzbhd/bluetooth/ui/_a6/MainView$OnCollectionClickListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->refreshUi()V

    :cond_0
    return-void
.end method
