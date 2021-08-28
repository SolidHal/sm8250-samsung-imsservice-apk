.class public Lcom/samsung/android/cmcnsd/network/NsdNetwork;
.super Ljava/lang/Object;
.source "NsdNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cmcnsd/network/NsdNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static USER_BINARY:Z


# instance fields
.field private mAuthenticationToken:Ljava/lang/String;

.field private mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

.field private mHostAddress:Ljava/lang/String;

.field private mInterfaceNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    const-class v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->TAG:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->USER_BINARY:Z

    .line 110
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$1;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->readFromParcel(Landroid/os/Parcel;)V

    .line 34
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .param p1, "x1"    # Z

    .line 17
    iput-boolean p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .param p1, "x1"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    return-object p1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    .line 147
    const-class v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    .line 149
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 66
    instance-of v0, p1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .line 68
    .local v0, "rhs":Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    iget-boolean v2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    iget-boolean v3, v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    if-eq v2, v3, :cond_0

    .line 69
    return v1

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    return v1

    .line 76
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 77
    return v1

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    iget-object v3, v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 81
    return v1

    .line 84
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 85
    sget-object v2, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotEquals "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v1

    .line 88
    :cond_4
    const/4 v1, 0x1

    return v1

    .line 90
    .end local v0    # "rhs":Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    :cond_5
    return v1
.end method

.method public final getAuthenticationToken()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getCapabilities()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterfaceNameList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransport()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->getTransport()I

    move-result v0

    return v0
.end method

.method public hasTransport(I)Z
    .locals 1
    .param p1, "transport"    # I

    .line 45
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, " {isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, " hostAddress=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v1, " infNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    sget-boolean v1, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->USER_BINARY:Z

    const-string v2, "]}"

    const-string v3, " token=["

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "xxx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    if-nez p1, :cond_0

    .line 132
    sget-object v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->TAG:Ljava/lang/String;

    const-string v1, "failed to write to Parcel. out is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mIsConnected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mHostAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mAuthenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->mInterfaceNameList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 140
    return-void
.end method
