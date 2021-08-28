.class Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "SemImsServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsRegistrationCallBack"
.end annotation


# instance fields
.field mListener:Lcom/samsung/android/ims/SemImsRegiListener;

.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemImsRegiListener;)V
    .locals 0
    .param p2, "listener"    # Lcom/samsung/android/ims/SemImsRegiListener;

    .line 714
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    .line 715
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mListener:Lcom/samsung/android/ims/SemImsRegiListener;

    .line 716
    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "registrationError"    # Lcom/sec/ims/ImsRegistrationError;

    .line 734
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$400(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v0

    .line 737
    .local v0, "semImsReg":Lcom/samsung/android/ims/SemImsRegistration;
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$500(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;

    move-result-object v1

    .line 740
    .local v1, "semImsRegiError":Lcom/samsung/android/ims/SemImsRegistrationError;
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mListener:Lcom/samsung/android/ims/SemImsRegiListener;

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/ims/SemImsRegiListener;->onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    goto :goto_0

    .line 741
    :catch_0
    move-exception v2

    .line 742
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 745
    .end local v0    # "semImsReg":Lcom/samsung/android/ims/SemImsRegistration;
    .end local v1    # "semImsRegiError":Lcom/samsung/android/ims/SemImsRegistrationError;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 720
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->this$0:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->access$400(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v0

    .line 725
    .local v0, "semImsReg":Lcom/samsung/android/ims/SemImsRegistration;
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mListener:Lcom/samsung/android/ims/SemImsRegiListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/ims/SemImsRegiListener;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    goto :goto_0

    .line 726
    :catch_0
    move-exception v1

    .line 727
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 730
    .end local v0    # "semImsReg":Lcom/samsung/android/ims/SemImsRegistration;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    return-void
.end method
