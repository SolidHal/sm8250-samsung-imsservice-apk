.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;
.super Lcom/sec/ims/IAutoConfigurationListener$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoConfigCallBack"
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemAutoConfigListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/samsung/android/ims/SemAutoConfigListener;

    .line 679
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/IAutoConfigurationListener$Stub;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    .line 681
    return-void
.end method


# virtual methods
.method public onAutoConfigurationCompleted(Z)V
    .locals 1
    .param p1, "result"    # Z

    .line 704
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemAutoConfigListener;->onAutoConfigurationCompleted(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    goto :goto_0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 708
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onMsisdnNumberNeeded()V
    .locals 1

    .line 695
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    invoke-interface {v0}, Lcom/samsung/android/ims/SemAutoConfigListener;->onMsisdnNumberNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    goto :goto_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 699
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public onVerificationCodeNeeded()V
    .locals 1

    .line 686
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$AutoConfigCallBack;->mListener:Lcom/samsung/android/ims/SemAutoConfigListener;

    invoke-interface {v0}, Lcom/samsung/android/ims/SemAutoConfigListener;->onVerificationCodeNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 690
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
