.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;
.super Lcom/sec/ims/ISimMobilityStatusListener$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimMobilityStatusCallBack"
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/ims/SemSimMobStatusListener;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemSimMobStatusListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/samsung/android/ims/SemSimMobStatusListener;

    .line 770
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/ISimMobilityStatusListener$Stub;-><init>()V

    .line 771
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mListener:Lcom/samsung/android/ims/SemSimMobStatusListener;

    .line 772
    return-void
.end method


# virtual methods
.method public onSimMobilityStateChanged(Z)V
    .locals 1
    .param p1, "event"    # Z

    .line 777
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mListener:Lcom/samsung/android/ims/SemSimMobStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemSimMobStatusListener;->onSimMobilityStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 781
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
