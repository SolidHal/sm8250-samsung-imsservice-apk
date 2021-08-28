.class public abstract Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;
.super Landroid/os/Binder;
.source "INsdNetworkCallback.java"

# interfaces
.implements Lcom/samsung/android/cmcnsd/INsdNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cmcnsd.INsdNetworkCallback"

.field static final TRANSACTION_onWifiApConnectionChanged:I = 0x1

.field static final TRANSACTION_onWifiApNetworkMessageReceived:I = 0x3

.field static final TRANSACTION_onWifiDirectConnectionChanged:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.samsung.android.cmcnsd.INsdNetworkCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    const-string v0, "com.samsung.android.cmcnsd.INsdNetworkCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    if-eqz v1, :cond_1

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    return-object v1

    .line 60
    :cond_1
    new-instance v1, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/samsung/android/cmcnsd/INsdNetworkCallback;
    .locals 1

    .line 255
    sget-object v0, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/cmcnsd/INsdNetworkCallback;)Z
    .locals 1
    .param p0, "impl"    # Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    .line 248
    sget-object v0, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 249
    sput-object p0, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/cmcnsd/INsdNetworkCallback;

    .line 250
    const/4 v0, 0x1

    return v0

    .line 252
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 64
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const-string v0, "com.samsung.android.cmcnsd.INsdNetworkCallback"

    .line 69
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 73
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 106
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    sget-object v2, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .local v2, "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    goto :goto_0

    .line 112
    .end local v2    # "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    :cond_2
    const/4 v2, 0x0

    .line 115
    .restart local v2    # "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    sget-object v3, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    .local v3, "_arg1":Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    goto :goto_1

    .line 119
    .end local v3    # "_arg1":Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    :cond_3
    const/4 v3, 0x0

    .line 121
    .restart local v3    # "_arg1":Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;->onWifiApNetworkMessageReceived(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v1

    .line 92
    .end local v2    # "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .end local v3    # "_arg1":Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    sget-object v2, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .local v2, "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    goto :goto_2

    .line 98
    .end local v2    # "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    :cond_5
    const/4 v2, 0x0

    .line 100
    .restart local v2    # "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    :goto_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;->onWifiDirectConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v1

    .line 78
    .end local v2    # "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 81
    sget-object v2, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .restart local v2    # "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    goto :goto_3

    .line 84
    .end local v2    # "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    :cond_7
    const/4 v2, 0x0

    .line 86
    .restart local v2    # "_arg0":Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    :goto_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/cmcnsd/INsdNetworkCallback$Stub;->onWifiApConnectionChanged(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    return v1
.end method
