<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
   		<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	</head>
  <div class="hero-wrap js-fullheight" style="background-image: url('/tour/images/background-02.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-9 ftco-animate" data-scrollax=" properties: { translateY: '70%' }">
            <h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><strong>Explore <br></strong> your amazing city</h1>
            <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Find great places to stay, eat, shop, or visit from local experts</p>
            <div class="block-17 my-4">
              <form action="/tour/index.do" method="post" class="d-block d-flex">
                <div class="fields d-block d-flex">
                  <div class="textfield-search one-third">
                  	<input type="text" class="form-control" placeholder="Ex: food, service, hotel">
                  </div>
                  <div class="select-wrap one-third">
                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                    <select name="" id="" class="form-control" placeholder="Keyword search">
                      <option value="">Where</option>
                      <option value="">San Francisco USA</option>
                      <option value="">Berlin Germany</option>
                      <option value="">Lodon United Kingdom</option>
                      <option value="">Paris Italy</option>
                    </select>
                  </div>
                </div>
                <input type="submit" class="search-submit btn btn-primary" value="Search">  
              </form>
            </div>
        
          </div>
        </div>
      </div>
    </div>
			 <div class="container-fluid" id="searchConF">
			<div class="container my-4">
		<div class="row">
					<div class="col-12 col-sm-8 col-lg-9 mb-4 mb-sm-0">
						<div class="h5 bolder">지역별 검색</div>
						<div class="area-block">
							<div class="container">
								<div class="row">
									<div class="col-lg-5 map-wrap map-block">
										<div id="map" class="" style="position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/bg_tile.png&quot;);"><div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: default;"><div style="position: absolute;"><div style="position: absolute; z-index: 0;"></div><div style="position: absolute; z-index: 1; left: 0px; top: 0px;"><img src="https://map0.daumcdn.net/map_2d/2106wof/L14/-1/0.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1px; top: 334px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2106wof/L14/-1/1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 255px; top: 334px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2106wof/L14/-1/2.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 511px; top: 334px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2106wof/L14/0/0.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1px; top: 78px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2106wof/L14/0/1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 255px; top: 78px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2106wof/L14/0/2.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 511px; top: 78px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map0.daumcdn.net/map_2d/2106wof/L14/1/0.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: -1px; top: -178px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map1.daumcdn.net/map_2d/2106wof/L14/1/1.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 255px; top: -178px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"><img src="https://map2.daumcdn.net/map_2d/2106wof/L14/1/2.png" alt="" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 511px; top: -178px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;"></div><div style="position: absolute; z-index: 1;"></div><div style="width: 288px; height: 350px; position: absolute; z-index: 1;"></div><div style="position: absolute; z-index: 1;"><svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; width: 1440px; height: 1750px; left: -576px; top: -700px;" viewBox="0 0 1440 1750"><defs></defs><path id="daum-maps-shape-17" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M753 743 L753 746 755 748 755 751 757 754 758 755 759 757 761 759 764 763 765 765 767 769 772 773 773 775 775 777 775 779 775 780 778 782 778 785 781 789 782 791 784 793 785 796 789 800 788 804 789 805 787 806 785 807 783 809 783 811 782 811 781 810 780 809 779 809 778 808 777 809 776 810 773 809 771 809 770 810 769 811 767 811 766 810 765 809 764 809 763 810 763 811 762 812 760 812 759 811 758 810 757 809 756 810 754 809 753 809 752 808 751 808 749 808 748 808 747 807 747 806 745 806 744 806 743 807 742 806 743 804 744 804 744 803 743 802 742 803 741 802 740 802 737 802 735 801 735 803 732 804 731 801 729 800 727 802 727 805 726 806 724 805 723 806 721 807 719 805 719 803 719 800 719 798 719 794 721 791 721 789 719 787 722 785 721 783 717 782 715 781 714 780 713 779 711 780 710 777 710 775 709 774 710 773 709 772 709 769 713 765 713 763 712 762 710 762 710 760 707 760 706 759 706 757 706 756 705 754 703 754 700 755 700 754 699 751 698 751 696 753 695 752 694 750 693 747 691 747 691 745 692 744 693 745 694 744 697 742 699 743 702 744 703 742 706 743 708 744 711 742 713 743 716 743 717 743 719 743 721 745 723 745 725 743 727 743 729 745 730 744 733 744 734 742 738 742 738 740 741 739 741 737 742 737 743 735 744 733 743 731 745 728 747 730 748 733 749 735 751 740 751 741 753 743 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-18" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M691 747 L693 747 694 750 695 752 696 753 698 751 699 750 699 753 700 755 703 754 705 754 706 756 706 757 706 759 707 760 710 760 710 762 712 762 712 763 713 765 710 769 709 771 710 773 709 774 708 775 710 777 710 780 713 779 714 780 715 781 717 782 720 783 722 784 719 787 721 789 721 791 719 794 720 798 719 800 719 803 718 804 717 806 716 807 715 806 714 808 713 810 712 810 711 812 710 812 708 812 707 812 706 814 704 815 704 816 703 817 701 818 699 820 698 819 696 818 695 817 693 816 691 816 690 817 688 818 686 818 685 819 683 819 680 819 679 815 677 815 677 813 676 813 676 811 673 808 672 806 670 802 667 803 668 801 670 801 671 802 673 800 675 801 677 801 679 799 675 798 673 796 676 792 677 790 675 788 676 787 676 784 679 785 679 788 680 788 682 790 682 791 683 790 685 791 687 790 688 791 690 791 691 789 692 789 693 788 693 787 693 786 694 785 693 783 692 782 691 780 690 777 689 777 687 777 686 779 684 779 683 780 682 781 682 782 680 783 679 782 678 783 675 782 672 780 670 782 669 782 667 781 666 778 666 776 666 774 666 772 668 773 671 772 673 770 673 767 672 766 672 763 674 762 676 761 679 760 680 758 681 756 682 753 685 753 686 749 689 748 689 747 691 747 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-19" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M759 910 L757 911 756 912 758 914 758 917 758 919 756 917 755 916 754 917 752 917 752 918 748 920 750 920 752 919 753 922 750 925 750 927 752 929 751 931 749 932 748 931 745 929 747 927 746 925 745 926 744 927 743 926 741 925 740 926 740 928 737 928 734 926 733 925 733 923 730 923 729 924 727 923 727 925 725 926 722 926 720 925 721 923 722 922 721 920 718 917 715 914 714 912 714 910 712 906 714 905 714 903 716 900 716 899 715 898 715 896 714 894 713 893 713 891 714 890 714 889 714 888 715 887 715 885 716 884 716 881 717 880 718 880 719 878 724 875 724 874 727 874 728 876 730 876 731 878 734 877 736 878 737 880 739 882 740 885 738 886 740 888 742 888 744 887 746 887 747 889 750 889 751 888 753 888 753 886 755 888 757 891 760 890 763 891 766 891 767 890 769 890 769 888 771 887 774 889 776 889 776 890 774 891 776 894 780 895 781 897 783 898 784 898 785 900 784 901 783 903 782 902 781 903 780 905 778 906 777 907 775 909 773 910 772 910 770 910 770 912 770 913 769 913 767 914 768 915 768 916 767 917 762 917 762 915 760 914 758 914 757 911 759 910 Z M742 931 L743 932 742 933 741 932 742 931 Z M747 931 L749 932 751 932 750 935 748 933 747 931 Z M733 927 L734 929 734 931 730 931 730 930 731 927 733 927 Z M726 926 L728 927 727 929 728 931 729 933 731 932 733 932 734 932 733 934 734 936 732 938 729 938 729 937 729 935 727 935 727 937 726 938 725 937 725 935 723 932 725 927 726 926 Z M760 921 L760 923 760 921 Z M761 920 L763 921 762 923 764 925 762 929 763 932 761 932 761 934 760 935 759 938 757 938 757 935 756 934 757 933 758 931 754 932 753 931 752 929 755 927 756 928 758 927 758 924 760 924 761 920 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-20" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M800 864 L800 867 799 868 799 870 798 872 798 874 797 879 796 885 791 885 788 887 786 886 787 884 784 883 779 884 778 885 775 888 772 888 769 888 769 890 767 890 766 891 763 891 760 890 757 891 755 888 754 885 754 884 756 882 758 883 758 884 761 883 761 879 762 879 762 877 763 876 764 875 764 873 763 871 763 869 762 868 760 867 759 867 758 868 757 869 756 869 754 869 754 871 753 874 751 874 752 872 750 872 748 874 748 876 751 877 752 878 749 879 748 881 749 882 750 884 747 884 748 887 749 888 747 889 746 887 744 887 742 888 740 888 738 886 740 885 739 882 737 880 736 878 734 877 731 878 730 876 728 876 727 874 726 873 727 872 726 869 725 867 727 866 729 865 729 862 730 861 729 858 731 857 733 857 732 855 733 855 731 854 729 855 727 853 726 853 724 854 723 852 724 851 725 850 725 848 724 847 725 846 725 842 726 840 725 838 721 837 724 835 725 833 725 834 727 835 727 830 728 829 729 829 731 829 732 830 732 828 733 825 734 825 736 823 738 824 741 821 742 822 744 824 748 824 750 822 749 821 749 818 752 815 755 812 758 812 758 810 760 811 761 811 762 812 763 810 764 810 765 809 766 810 767 811 769 811 770 810 770 809 772 809 776 810 777 808 779 808 780 809 781 810 781 811 783 811 783 809 785 807 787 806 789 805 790 808 792 810 791 812 791 814 792 817 792 819 792 821 794 823 795 826 795 829 793 831 792 833 792 835 793 837 794 840 793 845 791 848 791 849 791 854 791 856 791 857 792 858 792 860 794 861 793 863 791 864 792 866 794 868 798 864 800 863 800 864 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-21" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M762 868 L763 869 763 871 764 873 764 874 763 876 763 877 762 878 761 879 761 882 758 884 758 883 756 882 754 884 754 885 753 888 751 888 750 889 747 889 749 888 748 887 747 885 749 885 749 882 748 881 749 879 751 879 752 878 748 876 748 874 750 872 752 872 751 874 753 874 754 871 754 869 755 870 757 869 757 868 758 868 760 867 762 868 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-22" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M704 842 L704 844 707 844 708 843 708 844 708 846 710 846 711 847 710 848 709 850 708 856 706 858 704 857 704 854 703 857 701 858 699 856 699 854 698 854 698 851 699 850 699 846 701 846 702 844 703 842 704 842 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-23" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M768 917 L768 915 767 915 768 914 769 913 770 914 770 912 770 911 771 910 773 910 775 909 776 907 778 906 780 905 781 904 781 902 782 902 784 902 786 901 788 902 788 903 789 904 787 904 787 908 785 910 784 912 784 913 781 913 781 916 779 916 778 915 777 917 777 919 774 919 773 918 772 917 771 918 768 918 Z M768 917 L769 920 768 921 767 920 767 918 Z M779 919 L777 917 779 917 779 919 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-24" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M692 789 L690 791 688 791 688 789 685 791 683 790 683 791 682 790 681 788 680 788 679 786 676 784 678 783 679 782 680 783 682 782 682 781 683 779 684 779 686 780 687 777 689 777 690 777 691 779 692 782 692 784 694 783 694 785 693 786 694 787 693 789 692 789 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-25" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M696 830 L699 831 700 832 699 833 699 834 700 835 700 836 701 837 702 838 704 839 705 842 702 844 701 846 699 846 695 845 694 842 694 840 695 838 694 836 693 833 692 830 694 829 696 830 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-26" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M791 896 L791 900 791 902 789 904 788 903 788 902 786 901 784 901 785 900 784 898 783 898 781 897 780 895 776 894 774 891 776 890 776 889 778 886 779 884 784 883 787 884 786 886 788 887 791 885 795 886 795 888 796 890 795 895 793 895 791 896 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-27" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M671 787 L669 787 669 785 671 783 669 782 670 782 672 780 675 782 678 783 676 784 676 787 675 788 677 789 677 791 675 794 672 795 670 793 670 791 669 789 671 787 Z M667 786 L669 788 665 789 663 792 660 791 659 789 661 788 664 787 666 785 667 786 Z M648 799 L648 801 650 802 648 803 647 801 648 799 Z M662 802 L662 800 664 799 665 801 663 802 Z M661 792 L662 794 661 795 661 792 Z M657 774 L657 776 659 777 659 778 658 779 657 777 656 776 656 774 657 774 Z M655 770 L656 771 657 772 656 773 654 773 653 772 653 771 655 770 Z M662 769 L665 772 666 774 666 775 666 779 667 781 665 782 661 782 660 781 661 779 660 777 659 776 659 772 660 771 662 769 Z M588 767 L588 769 587 769 588 767 Z M587 760 L589 760 588 764 585 763 585 761 587 760 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-28" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M662 899 L663 900 664 901 665 904 665 906 667 906 668 905 670 905 672 904 674 903 674 901 676 900 677 897 678 897 680 897 681 898 682 898 682 900 683 901 684 901 685 901 685 900 686 899 687 898 688 898 688 899 689 901 689 902 690 903 689 904 689 906 691 906 692 906 693 905 694 905 696 905 698 906 700 906 702 905 704 906 706 903 707 903 712 906 714 910 714 912 715 914 717 916 720 919 722 922 721 923 720 925 718 926 718 927 717 926 716 928 714 928 713 930 715 932 719 930 721 930 721 933 720 935 720 937 718 938 717 936 715 939 715 942 711 941 711 938 713 937 711 933 710 933 710 931 710 929 709 931 705 932 704 933 703 937 705 939 708 941 709 944 708 946 705 945 706 947 705 950 701 952 699 951 696 948 694 949 692 947 692 946 694 945 694 943 695 942 697 942 697 939 698 938 699 940 701 941 701 938 701 936 698 937 697 936 696 937 695 939 695 940 690 941 689 942 686 943 686 947 685 948 685 950 686 951 683 952 678 952 677 948 677 946 676 945 676 950 674 953 671 954 669 955 670 958 669 960 665 959 663 956 664 955 664 953 663 954 662 951 663 949 662 948 660 947 657 946 654 944 655 943 653 941 655 936 657 937 658 939 659 937 659 935 662 935 659 935 658 934 660 931 659 929 659 927 659 926 657 927 655 925 658 924 659 921 659 920 658 921 657 919 654 921 653 922 652 920 649 919 649 917 651 917 654 918 653 916 657 915 657 917 658 918 660 919 660 921 662 920 663 917 661 917 658 913 655 911 657 909 657 907 659 907 659 905 660 902 660 900 662 899 Z M601 971 L603 973 601 972 601 971 Z M668 968 L666 970 664 969 665 968 666 967 668 968 Z M671 966 L672 969 670 970 671 968 671 966 Z M682 965 L683 967 683 969 680 967 682 965 Z M667 964 L669 965 667 967 666 966 667 964 Z M643 960 L646 960 644 962 642 961 643 960 Z M679 958 L681 958 681 959 679 961 679 959 678 959 679 958 Z M686 958 L688 957 688 958 686 958 Z M671 959 L670 956 672 955 674 956 675 958 676 960 673 961 671 959 Z M684 955 L684 956 683 958 680 957 681 955 683 956 684 955 Z M679 953 L680 956 679 956 676 957 676 955 677 954 679 953 Z M689 952 L690 954 688 954 689 952 Z M707 951 L711 953 709 954 707 951 Z M696 950 L696 953 692 954 691 952 693 951 695 950 Z M707 947 L709 951 707 951 707 947 Z M720 947 L722 950 721 950 720 950 718 948 720 947 Z M653 945 L655 946 656 947 658 949 659 951 658 953 656 955 654 955 649 958 648 956 646 954 647 952 649 951 653 946 Z M644 943 L646 944 646 947 645 947 645 945 644 943 Z M643 942 L645 945 643 946 642 944 643 942 Z M649 940 L650 942 650 943 647 941 649 940 Z M615 940 L617 940 615 942 615 940 Z M720 937 L721 939 722 941 722 943 722 945 720 945 718 943 721 940 720 937 Z M640 937 L641 938 642 939 641 940 639 941 638 938 640 937 Z M646 935 L647 935 650 936 650 939 648 937 646 938 646 935 Z M642 933 L642 936 639 936 638 938 637 937 637 935 639 935 642 933 Z M649 933 L649 935 648 934 649 933 Z M647 929 L649 930 649 931 647 932 646 933 645 931 646 930 647 931 647 929 Z M655 927 L656 929 656 930 658 930 658 933 657 931 654 930 655 928 Z M646 928 L646 930 644 931 641 929 643 928 646 928 Z M719 925 L721 928 718 927 719 925 Z M648 921 L650 923 648 924 648 921 Z M649 915 L648 916 647 919 644 918 646 917 647 915 649 915 Z M662 945 L663 944 661 943 660 939 659 938 658 942 659 943 662 945 Z M659 938 L661 941 663 942 665 943 665 940 664 938 663 937 662 937 660 937 659 938 Z M678 920 L680 919 682 919 683 918 684 919 686 918 687 916 687 914 686 913 685 912 684 910 683 909 681 909 680 910 678 911 676 910 676 909 674 910 673 911 671 912 671 915 671 916 672 917 674 917 676 919 677 920 678 920 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-29" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M676 909 L676 910 678 911 680 910 681 909 682 909 684 910 685 912 686 913 687 914 687 916 686 918 684 919 683 918 682 919 680 919 678 920 677 920 676 919 674 917 672 917 671 916 671 915 671 912 673 911 674 910 675 909 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-30" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M681 862 L683 861 684 860 688 861 689 864 692 865 694 864 696 863 698 863 700 862 702 862 703 867 704 868 706 868 707 870 709 870 710 867 714 868 714 865 716 866 719 867 720 868 724 866 725 867 726 869 727 872 725 872 724 874 724 875 719 878 718 880 717 880 717 881 716 884 715 885 715 887 714 888 714 889 714 890 713 891 713 892 714 893 715 896 715 898 716 899 716 900 714 902 714 905 712 906 709 903 706 903 704 906 702 905 700 906 698 906 696 905 695 905 694 905 693 906 692 907 690 906 689 906 689 904 690 903 689 902 688 902 689 901 688 899 688 898 687 898 686 899 685 900 685 901 684 901 683 900 682 899 681 898 680 897 678 897 677 897 675 898 675 901 674 903 673 904 671 905 670 905 668 906 667 906 665 905 664 901 664 900 662 899 664 895 667 893 669 894 671 891 669 891 665 891 663 890 663 888 665 887 667 885 665 883 664 878 664 877 666 872 666 870 670 870 675 869 675 868 678 867 681 865 681 862 Z M660 879 L660 879 Z M664 879 L665 883 668 885 670 882 670 880 674 880 672 875 670 875 670 872 666 872 664 879 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-31" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M676 1001 L678 1001 680 1003 683 1004 682 1005 683 1007 682 1010 681 1010 681 1012 679 1015 676 1015 675 1016 671 1016 668 1018 665 1018 662 1019 660 1018 658 1019 656 1018 653 1020 652 1018 649 1017 648 1015 649 1013 652 1010 653 1008 659 1005 662 1004 664 1003 668 1003 674 1001 676 1001 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-32" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M653 822 L655 821 656 818 657 819 656 823 657 824 657 823 659 822 661 818 660 818 659 815 658 814 662 814 665 812 667 812 670 814 673 814 677 816 679 820 681 821 683 820 684 819 686 818 688 818 690 817 691 816 693 816 695 817 696 818 698 819 699 820 700 822 701 822 702 824 703 825 705 828 703 827 702 828 701 829 700 829 700 831 697 830 694 829 692 830 693 833 693 836 695 838 694 840 694 842 696 844 698 847 699 850 698 851 698 854 699 854 699 856 700 857 703 857 702 854 704 857 706 858 708 856 710 855 712 856 712 861 714 863 715 865 714 868 710 867 710 869 707 870 706 868 704 868 703 867 702 862 700 862 699 863 696 863 694 864 692 865 689 864 689 862 684 860 683 861 681 861 681 865 678 867 675 867 675 869 672 868 672 866 670 866 669 862 665 860 666 860 666 857 666 856 667 854 665 851 667 850 665 848 665 845 664 842 664 840 663 839 663 836 660 835 658 835 657 836 656 835 656 832 654 832 655 830 653 830 652 831 651 832 650 832 651 830 652 830 650 827 649 828 650 825 650 823 651 824 651 821 652 820 653 822 Z M659 838 L660 842 661 844 661 846 659 846 658 845 657 841 657 838 657 836 659 835 659 838 Z" transform="translate(0,0)"></path><path id="daum-maps-shape-33" style="stroke: rgb(171, 171, 171); stroke-opacity: 1; stroke-width: 1px; color: rgb(171, 171, 171); stroke-linecap: round; fill: rgb(255, 255, 255); fill-opacity: 1; fill-rule: evenodd; display: block;" d=" M739 801 L740 802 742 803 743 802 744 803 744 804 743 804 742 805 743 807 744 806 745 806 747 806 747 807 748 808 749 808 751 808 751 807 752 808 753 809 755 809 756 809 758 810 758 812 755 812 754 814 749 818 749 821 750 822 748 824 744 824 742 822 741 821 740 824 736 823 734 825 733 825 732 828 733 829 731 829 729 829 728 829 727 830 727 835 725 834 725 833 724 835 721 836 725 838 726 840 726 841 725 845 724 847 725 848 725 850 724 851 723 852 724 854 726 853 727 853 729 855 731 854 733 855 732 855 733 857 731 857 729 858 730 860 729 862 729 865 727 866 725 867 724 866 720 868 719 867 716 866 715 865 714 863 712 861 713 857 710 855 708 856 709 850 710 848 711 847 710 846 708 846 709 844 708 843 707 844 704 844 704 842 704 839 703 838 701 838 700 837 700 836 699 834 700 833 699 831 700 830 700 829 701 828 702 827 704 828 704 826 702 824 701 822 700 822 699 820 701 818 703 817 704 816 704 815 706 814 707 812 708 812 710 812 711 812 712 810 713 810 714 808 714 806 716 807 717 806 717 805 719 803 719 805 721 807 723 806 724 805 726 806 727 805 727 802 729 800 731 801 732 804 735 803 735 801 737 803 739 801 Z" transform="translate(0,0)"></path></svg></div><div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"></div></div></div><div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left; display: none;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 58px;"></div><div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">128km</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;"><img src="https://t1.daumcdn.net/mapjsapi/images/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>
									
									</div>
									<div class="col-12 col-lg-7 area-select-block px-1 px-lg-5">
										<form action="/search.jsp" method="get">
											<div class="row">
												<div class="col-8 col-lg-9 pr-1">
													<div class="form-group">
														<select class="form-control" id="area" name="area">
															<option value="" disabled="" selected="" hidden="">광역시/도</option>
															<option value="">전국</option>
														<option value="서울">서울</option>
														<option value="부산">부산</option>
														<option value="대구">대구</option>
														<option value="인천">인천</option>
														<option value="광주">광주</option>
														<option value="대전">대전</option>
														<option value="울산">울산</option>
														<option value="세종">세종</option>
														<option value="경기">경기</option>
														<option value="강원">강원</option>
														<option value="충북">충북</option>
														<option value="충남">충남</option>
														<option value="경북">경북</option>
														<option value="경남">경남</option>
														<option value="전북">전북</option>
														<option value="전남">전남</option>
														<option value="제주">제주</option>
														</select>
													</div>
													<div class="form-group">
														<select class="form-control" id="sigungu" name="sigungu"><option value="" disabled="" selected="" hidden="">시/군/구</option><option value="">전체</option></select>
													</div>
												</div>
												<div class="col-4 col-lg-3 px-1 text-center">
													<div class="form-group">
														<div class="" style="">
															<button type="submit" class="btn px-3">검색</button>
														</div>
													</div>
												</div>
												
											</div>
										</form>
										<div class="mt-3" id="ingiTable">
											<div class="bolder ingi-title">인기 지역</div>
											<div>
												<table>
													<tbody><tr>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=부산'">부산</td>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=춘천'">춘천</td>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=제주'">제주</td>
													</tr>
													<tr>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=광주'">광주</td>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=거창'">거창</td>
														<td style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=대구'">대구</td>
													</tr>
												</tbody></table>
											</div>										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-sm-4 col-lg-3 ingi-block">
						<div class="ingi-title mt-4 py-1">
							인기검색어
						</div>
						<div class="ingi-words">
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=부산'">부산</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=진주'">진주</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=대구'">대구</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=경남'">경남</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=경주'">경주</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=용산'">용산</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=맛집'">맛집</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=종로'">종로</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=첨성대'">첨성대</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=코스'">코스</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=레저'">레저</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=해수욕장'">해수욕장</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=전남'">전남</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=통영'">통영</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=섬'">섬</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=강릉'">강릉</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=목포'">목포</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=김해'">김해</div>
						<div style="cursor:pointer;" onclick="location.href='/search.jsp?searchWords=태종대'">태종대</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    
    <section class="ftco-section ftco-destination">
    	<div class="container">
    		<div class="row justify-content-start mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading">Featured</span>
            <h2 class="mb-4"><strong>Featured</strong> Destination</h2>
          </div>
        </div>
    		<div class="row">
    			<div class="col-md-12">
    				<div class="destination-slider owl-carousel ftco-animate">
    					<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">Paris, Italy</a></h3>
		    						<span class="listing">15 Listing</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-2.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">San Francisco, USA</a></h3>
		    						<span class="listing">20 Listing</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-3.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">Lodon, UK</a></h3>
		    						<span class="listing">10 Listing</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-4.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">Lion, Singapore</a></h3>
		    						<span class="listing">3 Listing</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-5.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">Australia</a></h3>
		    						<span class="listing">3 Listing</span>
		    					</div>
		    				</div>
	    				</div>
	    				<div class="item">
		    				<div class="destination">
		    					<a href="#" class="img d-flex justify-content-center align-items-center" style="background-image: url(images/destination-6.jpg);">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3">
		    						<h3><a href="#">Paris, Italy</a></h3>
		    						<span class="listing">3 Listing</span>
		    					</div>
		    				</div>
	    				</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section bg-light">
    	<div class="container">
				<div class="row justify-content-start mb-5 pb-3">
          <div class="col-md-7 heading-section ftco-animate">
          	<span class="subheading">Special Offers</span>
            <h2 class="mb-4"><strong>Top</strong> Tour Packages</h2>
          </div>
        </div>    		
    	</div>
    	<div class="container-fluid">
    		<div class="row">
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-1.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">Paris, Italy</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    						
    						</div>
    						<p>Far far away, behind the word mountains, far from the countries</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-2.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">Paris, Italy</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    						
    						</div>
    						<p>Far far away, behind the word mountains, far from the countries</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-3.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">Paris, Italy</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    						
    						</div>
    						<p>Far far away, behind the word mountains, far from the countries</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-4.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">Paris, Italy</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    					
    						</div>
    						<p>Far far away, behind the word mountains, far from the countries</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg ftco-animate">
    				<div class="destination">
    					<a href="#" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/destination-5.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3">
    						<div class="d-flex">
    							<div class="one">
		    						<h3><a href="#">Paris, Italy</a></h3>
		    						<p class="rate">
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star"></i>
		    							<i class="icon-star-o"></i>
		    							<span>8 Rating</span>
		    						</p>
	    						</div>
	    						
    						</div>
    						<p>Far far away, behind the word mountains, far from the countries</p>
    						<p class="days"><span>2 days 3 nights</span></p>
    						<hr>
    						<p class="bottom-area d-flex">
    							<span><i class="icon-map-o"></i> San Franciso, CA</span> 
    							<span class="ml-auto"><a href="#">Discover</a></span>
    						</p>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
    </section>

    <section class="ftco-section ftco-counter img" id="section-counter" style="background-image: url(images/bg_1.jpg);">
    	<div class="container">
    		<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
            <h2 class="mb-4">Some fun facts</h2>
            <span class="subheading">More than 100,000 websites hosted</span>
          </div>
        </div>
    		<div class="row justify-content-center">
    			<div class="col-md-10">
		    		<div class="row">
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="100000">0</strong>
		                <span>Happy Customers</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="40000">0</strong>
		                <span>Destination Places</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="87000">0</strong>
		                <span>Hotels</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-3 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18 text-center">
		              <div class="text">
		                <strong class="number" data-number="56400">0</strong>
		                <span>Restaurant</span>
		              </div>
		            </div>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>



    <section class="ftco-section testimony-section bg-light">
      <div class="container">
        <div class="row justify-content-start">
          <div class="col-md-5 heading-section ftco-animate">
          	<span class="subheading">Best Directory Website</span>
            <h2 class="mb-4 pb-3"><strong>Why</strong> Choose Us?</h2>
            <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
            <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life.</p>
            <p><a href="#" class="btn btn-primary btn-outline-primary mt-4 px-4 py-3">Read more</a></p>
          </div>
					<div class="col-md-1"></div>
          <div class="col-md-6 heading-section ftco-animate">
          	<span class="subheading">Testimony</span>
            <h2 class="mb-4 pb-3"><strong>Our</strong> Guests Says</h2>
          	<div class="row ftco-animate">
		          <div class="col-md-12">
		            <div class="carousel-testimony owl-carousel">
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/person_1.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
		                    <p class="name">Dennis Green</p>
		                    <span class="position">Guest from italy</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/person_2.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
		                    <p class="name">Dennis Green</p>
		                    <span class="position">Guest from London</span>
		                  </div>
		                </div>
		              </div>
		              <div class="item">
		                <div class="testimony-wrap d-flex">
		                  <div class="user-img mb-5" style="background-image: url(images/person_3.jpg)">
		                    <span class="quote d-flex align-items-center justify-content-center">
		                      <i class="icon-quote-left"></i>
		                    </span>
		                  </div>
		                  <div class="text ml-md-4">
		                    <p class="mb-5">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
		                    <p class="name">Dennis Green</p>
		                    <span class="position">Guest from Philippines</span>
		                  </div>
		                </div>
		              </div>
		            </div>
		          </div>
		        </div>
          </div>
        </div>
      </div>
    </section>


		<section class="ftco-section-parallax">
      <div class="parallax-img d-flex align-items-center">
        <div class="container">
          <div class="row d-flex justify-content-center">
            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
              <h2>Subcribe to our Newsletter</h2>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
              <div class="row d-flex justify-content-center mt-5">
                <div class="col-md-8">
                  <form action="#" class="subscribe-form">
                    <div class="form-group d-flex">
                      <input type="text" class="form-control" placeholder="Enter email address">
                      <input type="submit" value="Subscribe" class="submit px-3">
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>



		<section class="ftco-section-parallax">
	      <div class="parallax-img d-flex align-items-center">
	        <div class="container">
	          <div class="row d-flex justify-content-center">
	            <div class="col-md-7 text-center heading-section heading-section-white ftco-animate">
	              <h2>Subcribe to our Newsletter</h2>
	              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in</p>
	              <div class="row d-flex justify-content-center mt-5">
	                <div class="col-md-8">
	                  <form action="#" class="subscribe-form">
	                    <div class="form-group d-flex">
	                      <input type="text" class="form-control" placeholder="Enter email address">
	                      <input type="submit" value="Subscribe" class="submit px-3">
	                    </div>
	                  </form>
	                </div>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </section>
	    <!-- map 불러오기 -->
	<!-- <script>
			$(document).ready(sigunguChange);
			$("#area").change(sigunguChange);
			
			function sigunguChange() {
				var selectedMetropol2 = $("#area").val();
				
				var content = "";
				//console.log(selectedMetropol2);
				$.ajax({
					url : "/web-semi-project/ajax/ajaxStateCity.jsp",
					data: {"metropol2":selectedMetropol2},
					type : 'get',
					success : function(data) {
						//console.log(data);
						var dataSub = data.substr(2, data.length-4);
						var dataSubSp = dataSub.split('}, {');
						
						content += "<option value='' disabled selected hidden>시/군/구</option>";
						content += "<option value=''>전체</option>";
						for (var i=1; i<dataSubSp.length; i++) {
							var dataSubSpSp = dataSubSp[i].split(', ');
							var stateCity = dataSubSpSp[0].split('=');
							var sigunguCode = dataSubSpSp[1].split('=');
							//console.log(dataSubSp[i]);
							content += "<option class='' value='"+stateCity[1]+"'>"+stateCity[1]+"</option>";
						}
						$('#sigungu').html(content);
					}
				})
				$("#sigungu").removeClass('select-option');
			}
			</script>
			
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d1fec8d8766a8a6cd6d1d7a100d376e0&libraries=services"></script>
			<script> // map 불러오기
			document.addEventListener('DOMContentLoaded', function () {
				var GEBImap = document.getElementById('map');
				var maploadDebounce = null;
				
				function mapload() {
					if (maploadDebounce) {
						clearTimeout(maploadDebounce);
					}
					
					maploadDebounce = setTimeout(function () {
						//console.log(window.innerWidth);
						//console.log(GEBImap);
						
						if ( window.innerWidth >= 992 ) {
							//console.log("992 이상");
							while ( GEBImap.hasChildNodes() ) { GEBImap.removeChild( GEBImap.firstChild ); }
							setMap();
						} else if ( window.innerWidth < 992 ) {
							//console.log("992 미만");
							while ( GEBImap.hasChildNodes() ) { GEBImap.removeChild( GEBImap.firstChild ); }
						}
					}, 100);
					
				}
				
				window.addEventListener('resize', mapload);
				window.addEventListener('orientationChange', mapload);
				window.addEventListener('load', mapload);
			});
			
			function setMap() {
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				mapOption = {
					center: new kakao.maps.LatLng(35.9, 127.75), // 지도의 중심좌표
					level: 14 // 지도의 확대 레벨
				};
				
				kakao.maps.disableHD();
				var map = new kakao.maps.Map(mapContainer, mapOption),
					customOverlay = new kakao.maps.CustomOverlay({}),
					infowindow = new kakao.maps.InfoWindow({removable: true});	
					
				// 마우스 드래그와 모바일 터치를 이용한 지도 이동을 막는다
				map.setDraggable(false);		
		
				// 마우스 휠과 모바일 터치를 이용한 지도 확대, 축소를 막는다
				map.setZoomable(false);   
				
				DrawPolygon();
				
				function DrawPolygon() {
					$.getJSON("metropolygon.json", function(geojson) {
						var data = geojson.features;
						var name = '';
						var code = '';
						
						$.each(data, function(index, val) {
							name = val.properties.CTP_KOR_NM;
							code = val.properties.CTPRVN_CD;
							
							if (val.geometry.type == "MultiPolygon") {
								displayArea(name, code, val.geometry.coordinates, true);
							} else {
								displayArea(name, code, val.geometry.coordinates, false);
							}
						});
					});
				}
				
				function makePolygon(coordinates) {
					var polygonPath = [];
					
					$.each(coordinates[0], function(index, coordinate) {
						polygonPath.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
					});
					
					return new kakao.maps.Polygon({
						path: polygonPath,
						strokeWeight: 1,
						strokeColor: '#ababab',
						strokeOpacity: 1,
						fillColor: '#ffffff',
						fillOpacity: 1
					});
				}
				
				function makeMultiPolygon(coordinates) {
					var polygonPath = [];
					
					$.each(coordinates, function(index, val2) {
						var coordinates2 = [];
						
						$.each(val2, function(index2, coordinate) {
							coordinates2.push(new kakao.maps.LatLng(coordinate[1], coordinate[0]));
						});
						
						polygonPath.push(coordinates2);
					});
					
					return new kakao.maps.Polygon({
						path: polygonPath,
						strokeWeight: 1,
						strokeColor: '#ababab',
						strokeOpacity: 1,
						fillColor: '#ffffff',
						fillOpacity: 1
					});
				}
				
				function displayArea(name, code, coordinates, multi) {
					var polygon;
					var metName = name;
					if (multi) {
						polygon = makeMultiPolygon(coordinates);
					} else {
						polygon = makePolygon(coordinates);
					}
					
					polygon.setMap(map);
					
					// 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
					kakao.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
						polygon.setOptions({fillColor: '#a1afc1'});
						
						customOverlay.setContent('<div class="area">' + metName + '</div>');
						customOverlay.setPosition(mouseEvent.latLng); 
						customOverlay.setMap(map);
					});
					
					// 다각형에 mousemove 이벤트를 등록하고 이벤트가 발생하면 커스텀 오버레이의 위치를 변경
					kakao.maps.event.addListener(polygon, 'mousemove', function(mouseEvent) {
						customOverlay.setPosition(mouseEvent.latLng); 
					});
		
					// 다각형에 mouseout 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 원래색으로 변경
					// 커스텀 오버레이를 지도에서 제거합니다 
					kakao.maps.event.addListener(polygon, 'mouseout', function() {
						polygon.setOptions({fillColor: '#ffffff'});
						customOverlay.setMap(null);
					}); 
					
					// 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 페이지 이동
					kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {
						location.href='#'+ metName;
					});
				}	
			}	
	</script> -->
	</body>
</html>
  

  
    
  