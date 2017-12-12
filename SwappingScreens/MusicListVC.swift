//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Murat Kuran on 01/11/2017.
//  Copyright © 2017 Murat Kuran. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func BackBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func connect3rdScreenPressed(_ sender: Any) {
        let songName: String = "Kara Biberim"
        performSegue(withIdentifier: "SongNameStr", sender: songName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC{
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
