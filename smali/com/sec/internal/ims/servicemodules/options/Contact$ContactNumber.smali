.class public Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/options/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactNumber"
.end annotation


# instance fields
.field mContactNormalizedNumber:Ljava/lang/String;

.field mContactNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "n1"    # Ljava/lang/String;
    .param p2, "n2"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->mContactNumber:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->mContactNormalizedNumber:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getNormalizedNumber()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->mContactNormalizedNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->mContactNumber:Ljava/lang/String;

    return-object v0
.end method
