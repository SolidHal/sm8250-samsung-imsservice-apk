.class public Lcom/sec/internal/google/ServiceProfile;
.super Ljava/lang/Object;
.source "ServiceProfile.java"


# instance fields
.field private mPhoneId:I

.field private mRegistrationListener:Lcom/android/ims/internal/IImsRegistrationListener;

.field private mServiceClass:I


# direct methods
.method public constructor <init>(IILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "serviceClass"    # I
    .param p3, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/sec/internal/google/ServiceProfile;->mPhoneId:I

    .line 12
    iput p2, p0, Lcom/sec/internal/google/ServiceProfile;->mServiceClass:I

    .line 13
    iput-object p3, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 14
    return-void
.end method


# virtual methods
.method public getPhoneId()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/sec/internal/google/ServiceProfile;->mPhoneId:I

    return v0
.end method

.method public getRegistrationListener()Lcom/android/ims/internal/IImsRegistrationListener;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Lcom/android/ims/internal/IImsRegistrationListener;

    return-object v0
.end method

.method public getServiceClass()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/sec/internal/google/ServiceProfile;->mServiceClass:I

    return v0
.end method

.method public setRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/ims/internal/IImsRegistrationListener;

    .line 17
    iput-object p1, p0, Lcom/sec/internal/google/ServiceProfile;->mRegistrationListener:Lcom/android/ims/internal/IImsRegistrationListener;

    .line 18
    return-void
.end method
