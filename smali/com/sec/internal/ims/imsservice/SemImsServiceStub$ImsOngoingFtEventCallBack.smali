.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;
.super Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsOngoingFtEventCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/ft/IImsOngoingFtEventListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .param p2, "x1"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub$1;

    .line 748
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V

    return-void
.end method


# virtual methods
.method public onFtStateChanged(Z)V
    .locals 3
    .param p1, "event"    # Z

    .line 751
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsOngoingFtEventCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$600(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 752
    .local v0, "ftListener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/ims/ft/SemImsFtListener;>;"
    if-nez v0, :cond_0

    return-void

    .line 754
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 755
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 756
    add-int/lit8 v1, v1, -0x1

    .line 758
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/ft/SemImsFtListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/ims/ft/SemImsFtListener;->onFtStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 759
    :catch_0
    move-exception v2

    .line 760
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 761
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 763
    :cond_1
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 764
    return-void
.end method
