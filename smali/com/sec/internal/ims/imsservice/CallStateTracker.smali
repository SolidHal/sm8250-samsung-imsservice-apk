.class public Lcom/sec/internal/ims/imsservice/CallStateTracker;
.super Ljava/lang/Object;
.source "CallStateTracker.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;,
        Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;
    }
.end annotation


# static fields
.field public static final CALL_CONNECTED:I = 0x2

.field public static final CALL_DISCONECTED:I = 0x1

.field public static final CALL_RESUMED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCallLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mCountLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/imsservice/CallStateTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "smm"    # Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mListeners:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCallLists:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCountLists:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;-><init>(Lcom/sec/internal/ims/imsservice/CallStateTracker;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mContext:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mHandler:Landroid/os/Handler;

    .line 185
    iput-object p3, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 186
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCallLists:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCountLists:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object v0
.end method


# virtual methods
.method public initSequentially()V
    .locals 5

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 191
    .local v0, "callStateIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 194
    new-instance v1, Lcom/sec/internal/ims/imsservice/CallStateTracker$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/CallStateTracker$2;-><init>(Lcom/sec/internal/ims/imsservice/CallStateTracker;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->register(Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;)V

    .line 201
    return-void
.end method

.method public register(Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    return-void
.end method

.method public unregister(Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method
