.class public abstract Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;
.super Landroid/os/Binder;
.source "IVshRemoteClient.java"

# interfaces
.implements Lcom/sec/internal/ims/csh/IVshRemoteClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/csh/IVshRemoteClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.internal.ims.csh.IVshRemoteClient"

.field static final TRANSACTION_closeVshSource:I = 0x2

.field static final TRANSACTION_openVshSource:I = 0x1

.field static final TRANSACTION_setOrientationListenerType:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    const-string v0, "com.sec.internal.ims.csh.IVshRemoteClient"

    invoke-virtual {p0, p0, v0}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/internal/ims/csh/IVshRemoteClient;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 84
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    const-string v0, "com.sec.internal.ims.csh.IVshRemoteClient"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 88
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/internal/ims/csh/IVshRemoteClient;

    if-eqz v1, :cond_1

    .line 89
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/csh/IVshRemoteClient;

    return-object v1

    .line 91
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/sec/internal/ims/csh/IVshRemoteClient;
    .locals 1

    .line 323
    sget-object v0, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;->sDefaultImpl:Lcom/sec/internal/ims/csh/IVshRemoteClient;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/sec/internal/ims/csh/IVshRemoteClient;)Z
    .locals 2
    .param p0, "impl"    # Lcom/sec/internal/ims/csh/IVshRemoteClient;

    .line 313
    sget-object v0, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;->sDefaultImpl:Lcom/sec/internal/ims/csh/IVshRemoteClient;

    if-nez v0, :cond_1

    .line 316
    if-eqz p0, :cond_0

    .line 317
    sput-object p0, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub$Proxy;->sDefaultImpl:Lcom/sec/internal/ims/csh/IVshRemoteClient;

    .line 318
    const/4 v0, 0x1

    return v0

    .line 320
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 314
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 95
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.sec.internal.ims.csh.IVshRemoteClient"

    .line 100
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-eq v9, v13, :cond_5

    const/4 v0, 0x2

    if-eq v9, v0, :cond_2

    const/4 v0, 0x3

    if-eq v9, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq v9, v0, :cond_0

    .line 165
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 104
    :cond_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    return v13

    .line 153
    :cond_1
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .local v1, "_arg1":I
    invoke-virtual {v8, v0, v1}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->setOrientationListenerType(II)I

    move-result v2

    .line 159
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return v13

    .line 134
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :cond_2
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 138
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    sget-object v2, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    .local v2, "_arg1":Landroid/view/Surface;
    goto :goto_0

    .line 142
    .end local v2    # "_arg1":Landroid/view/Surface;
    :cond_3
    const/4 v2, 0x0

    .line 145
    .restart local v2    # "_arg1":Landroid/view/Surface;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v13

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    .line 146
    .local v3, "_arg2":Z
    :goto_1
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->closeVshSource(JLandroid/view/Surface;Z)I

    move-result v4

    .line 147
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v13

    .line 109
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/view/Surface;
    .end local v3    # "_arg2":Z
    .end local v4    # "_result":I
    :cond_5
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 113
    .local v14, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v10}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    move-object/from16 v16, v0

    .local v0, "_arg1":Landroid/view/Surface;
    goto :goto_2

    .line 117
    .end local v0    # "_arg1":Landroid/view/Surface;
    :cond_6
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 120
    .local v16, "_arg1":Landroid/view/Surface;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 122
    .local v17, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 124
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 126
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 127
    .local v20, "_arg5":I
    move-object/from16 v0, p0

    move-wide v1, v14

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/csh/IVshRemoteClient$Stub;->openVshSource(JLandroid/view/Surface;IIII)I

    move-result v0

    .line 128
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v13
.end method
