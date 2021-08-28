.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;
.super Lcom/sec/ims/IImsDmConfigListener$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsDmConfigCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/IImsDmConfigListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .param p2, "x1"    # Lcom/sec/internal/ims/imsservice/SemImsServiceStub$1;

    .line 657
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)V

    return-void
.end method


# virtual methods
.method public onChangeDmValue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "state"    # Z

    .line 660
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$300(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 661
    .local v0, "dmConfigListener":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/samsung/android/ims/SemImsDmConfigListener;>;"
    if-eqz v0, :cond_1

    .line 662
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 663
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 664
    add-int/lit8 v1, v1, -0x1

    .line 666
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/ims/SemImsDmConfigListener;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/ims/SemImsDmConfigListener;->onChangeDmValue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 667
    :catch_0
    move-exception v2

    .line 668
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 669
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 673
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
