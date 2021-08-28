.class public abstract Lcom/samsung/android/cmcnsd/INsdService$Stub;
.super Landroid/os/Binder;
.source "INsdService.java"

# interfaces
.implements Lcom/samsung/android/cmcnsd/INsdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/INsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/INsdService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cmcnsd.INsdService"

.field static final TRANSACTION_acquireNetwork:I = 0x3

.field static final TRANSACTION_registerNetworkCallback:I = 0x1

.field static final TRANSACTION_releaseNetwork:I = 0x4

.field static final TRANSACTION_sendNetworkMessage:I = 0x5

.field static final TRANSACTION_unregisterNetworkCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    const-string v0, "com.samsung.android.cmcnsd.INsdService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cmcnsd/INsdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcnsd/INsdService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const-string v0, "com.samsung.android.cmcnsd.INsdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 53
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cmcnsd/INsdService;

    if-eqz v1, :cond_1

    .line 54
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cmcnsd/INsdService;

    return-object v1

    .line 56
    :cond_1
    new-instance v1, Lcom/samsung/android/cmcnsd/INsdService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcnsd/INsdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/samsung/android/cmcnsd/INsdService;
    .locals 1

    .line 308
    sget-object v0, Lcom/samsung/android/cmcnsd/INsdService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcnsd/INsdService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/cmcnsd/INsdService;)Z
    .locals 1
    .param p0, "impl"    # Lcom/samsung/android/cmcnsd/INsdService;

    .line 301
    sget-object v0, Lcom/samsung/android/cmcnsd/INsdService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcnsd/INsdService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 302
    sput-object p0, Lcom/samsung/android/cmcnsd/INsdService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcnsd/INsdService;

    .line 303
    const/4 v0, 0x1

    return v0

    .line 305
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 60
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    const-string v0, "com.samsung.android.cmcnsd.INsdService"

    .line 65
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 69
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v1

    .line 122
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 126
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 129
    sget-object v4, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .local v4, "_arg2":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    goto :goto_0

    .line 132
    .end local v4    # "_arg2":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    :cond_2
    const/4 v4, 0x0

    .line 135
    .restart local v4    # "_arg2":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    sget-object v5, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    .local v5, "_arg3":Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    goto :goto_1

    .line 139
    .end local v5    # "_arg3":Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    :cond_3
    const/4 v5, 0x0

    .line 141
    .restart local v5    # "_arg3":Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    :goto_1
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/cmcnsd/INsdService$Stub;->sendNetworkMessage(ILjava/lang/String;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)Z

    move-result v6

    .line 142
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return v1

    .line 113
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .end local v5    # "_arg3":Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    .end local v6    # "_result":Z
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcnsd/INsdService$Stub;->releaseNetwork(I)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v1

    .line 96
    .end local v2    # "_arg0":I
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 101
    sget-object v3, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .local v3, "_arg1":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    goto :goto_2

    .line 104
    .end local v3    # "_arg1":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    :cond_6
    const/4 v3, 0x0

    .line 106
    .restart local v3    # "_arg1":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cmcnsd/INsdService$Stub;->acquireNetwork(ILcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Z

    move-result v4

    .line 107
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    return v1

    .line 86
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .end local v4    # "_result":Z
    :cond_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    move-result-object v2

    .line 89
    .local v2, "_arg0":Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcnsd/INsdService$Stub;->unregisterNetworkCallback(Lcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z

    move-result v3

    .line 90
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    return v1

    .line 74
    .end local v2    # "_arg0":Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
    .end local v3    # "_result":Z
    :cond_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 78
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    move-result-object v3

    .line 79
    .local v3, "_arg1":Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cmcnsd/INsdService$Stub;->registerNetworkCallback(ILcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z

    move-result v4

    .line 80
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return v1
.end method
