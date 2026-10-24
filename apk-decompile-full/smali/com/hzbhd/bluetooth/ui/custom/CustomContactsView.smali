.class public Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;
.super Landroid/widget/RelativeLayout;
.source "CustomContactsView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private etSearch:Landroid/widget/EditText;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private initProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private isQuery:Z

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapterContract:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mView:Landroid/view/View;

.field queryRunnable:Ljava/lang/Runnable;

.field private scanningView:Landroid/widget/ImageView;

.field private tvNoContacts:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->lists:Ljava/util/List;

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->isQuery:Z

    .line 49
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 51
    new-instance p2, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$1;-><init>(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance p2, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$2;

    invoke-direct {p2, p0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView$2;-><init>(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;)V

    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->queryRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f040073

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mView:Landroid/view/View;

    .line 78
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;)Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mAdapterContract:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->stopQueryContract()V

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;)Landroid/widget/TextView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->tvNoContacts:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->getQueryContactsTask()V

    return-void
.end method

.method private getQueryContactsTask()V
    .locals 7

    .line 132
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/ui/_m6/BluetoothHelper;->queryContactPhoneNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "contactsList"

    .line 135
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 136
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 137
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    .line 138
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "number"

    .line 139
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    iget-object v5, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->lists:Ljava/util/List;

    new-instance v6, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;

    invoke-direct {v6, v4, v3}, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private initRecyclerView()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 97
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->lists:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mAdapterContract:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mView:Landroid/view/View;

    const v1, 0x7f0901f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 83
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mView:Landroid/view/View;

    const v1, 0x7f090195

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->scanningView:Landroid/widget/ImageView;

    .line 84
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mView:Landroid/view/View;

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->etSearch:Landroid/widget/EditText;

    .line 85
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mView:Landroid/view/View;

    const v1, 0x7f090251

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->tvNoContacts:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->scanningView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->initProgressDrawable:Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->etSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 91
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mContext:Landroid/content/Context;

    const v1, 0x7f04004a

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 92
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->initRecyclerView()V

    return-void
.end method

.method private startAnimation()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->scanningView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 113
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->scanningView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->initProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private stopQueryContract()V
    .locals 2

    .line 101
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->isQuery:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->isQuery:Z

    .line 103
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->scanningView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->stopAnimation()V

    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public clearData()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 180
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mAdapterContract:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->notifyDataSetChanged()V

    .line 181
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->tvNoContacts:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 157
    iget-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mAdapterContract:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->getFilter()Landroid/widget/Filter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnClickListener(Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$OnClickListener;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mAdapterContract:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->setOnClickListener(Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$OnClickListener;)V

    return-void
.end method

.method public startQueryContract()V
    .locals 3

    .line 167
    iget-boolean v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->isQuery:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->isQuery:Z

    .line 169
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->startAnimation()V

    .line 170
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->scanningView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->tvNoContacts:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomContactsView;->queryRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
